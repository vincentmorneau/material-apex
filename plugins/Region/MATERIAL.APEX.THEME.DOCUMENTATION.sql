function render (
    p_region in apex_plugin.t_region
    , p_plugin in apex_plugin.t_plugin
    , p_is_printer_friendly in boolean
) return apex_plugin.t_region_render_result as
    subtype plugin_attr is varchar2(32767);

    /* Global variables */
    l_result apex_plugin.t_region_render_result;
    l_html varchar2(32767);

    /* t_plugin Attributes */
    l_table_classes plugin_attr := p_plugin.attribute_01;
    l_thead_classes plugin_attr := p_plugin.attribute_02;
    l_th_classes plugin_attr := p_plugin.attribute_03;
    l_td_classes plugin_attr := p_plugin.attribute_04;

    /* t_region Attributes */
    l_template_type plugin_attr := p_region.attribute_01;

    l_display_template_options boolean := p_region.attribute_02 = 'Y';

    l_display_only_associated_to boolean := p_region.attribute_03 = 'Y';
    l_display_all_group_choices boolean := p_region.attribute_04 = 'Y';

    l_display_grid_attributes boolean := p_region.attribute_05 = 'Y';
    l_display_custom_attributes boolean := p_region.attribute_06 = 'Y';

    /* Calculated variables */
    l_template_id varchar2(255);
    l_table_name varchar2(255);
    l_column_name varchar2(255);
    l_column_value varchar2(255);
    l_template_options varchar2(4000);

    /* c_parent_region */
    cursor c_sibling_regions is
    select nvl(sibling_region.region_id, parent_region.region_id) region_id
        , nvl(sibling_region.region_name, parent_region.region_name) region_name
    from apex_application_page_regions plugin_region

    join apex_application_page_regions parent_region
    on parent_region.region_id = plugin_region.parent_region_id

    left join apex_application_page_regions sibling_region
    on sibling_region.parent_region_id = plugin_region.parent_region_id
    and sibling_region.region_id <> plugin_region.region_id

    where plugin_region.region_id = p_region.id
    order by sibling_region.display_sequence;

    /* helper functions */
    procedure open_table (
        p_html in out nocopy varchar2
        , p_th1 in varchar2
        , p_th2 in varchar2
        , p_th3 in varchar2 default null
    ) is
    begin
        p_html := p_html
            || '<table class="ma-table-small ' || l_table_classes || '">'
            || '<thead class="' || l_thead_classes || '">'
            || '<tr>'
            || '<th class="' || l_th_classes || '">' || p_th1 || '</th>'
            || '<th class="' || l_th_classes || '">' || p_th2 || '</th>'
            || '<th class="' || l_th_classes || '">' || p_th3 || '</th>'
            || '</tr>'
            || '</thead>'
            || '<tbody>';
    end open_table;

    procedure get_row  (
        p_html in out nocopy varchar2
        , p_td1 in varchar2
        , p_td2 in varchar2
        , p_td3 in varchar2 default null
    ) is
    begin
        p_html := p_html
            || '<tr>'
            || '<td class="' || l_td_classes || '" nowrap>' || p_td1 || '</td>'
            || '<td class="' || l_td_classes || '">' || p_td2 || '</td>'
            || '<td class="' || l_td_classes || '">' || p_td3 || '</td>'
            || '</tr>';
    end get_row;

    procedure close_table (
        p_html in out nocopy varchar2
    ) is
    begin
        p_html := p_html
            || '</tbody>'
            || '</table>';
    end close_table;

    procedure get_region_title (
        p_html in out nocopy varchar2
        , p_template_type in varchar2
        , p_component_name in varchar2
        , p_template_name in varchar2
    ) is
    begin
        p_html := p_html
            || '<div class="center m-t-2">'
                || '<strong>Component Name: ' || p_component_name || '</strong>'
                || '<br>'
                || '<small><i>Template: ' || p_template_name || '</i></small>'
            || '</div>'
						;
    end get_region_title;

    procedure get_component_info (
        p_template_type in varchar2
        , p_region_id in number
        , p_table_name in out nocopy varchar2
        , p_column_name in out nocopy varchar2
        , p_column_value in out nocopy varchar2
        , p_template_id in out nocopy number
        , p_template_options in out nocopy varchar2
    ) is
        l_template_id_column varchar2(255);
        l_template_options_column varchar2(255);
        l_component_name_column varchar2(255);
        l_template_name_column varchar2(255);

        l_component_name varchar2(255);
        l_template_name varchar2(255);

        l_sql varchar2(4000);
    begin
        case p_template_type
            when 'BUTTON' then
                l_template_id_column := 'button_template_id';
                l_template_options_column := 'button_template_options';
                l_component_name_column := 'button_name';
                l_template_name_column := 'button_template';
                p_table_name := 'apex_application_page_buttons';
                p_column_name := 'button_id';
            when 'BREADCRUMB' then
                l_template_id_column := 'breadcrumb_template_id';
                l_template_options_column := 'component_template_options';
                l_component_name_column := 'region_name';
                l_template_name_column := 'template';
                p_table_name := 'apex_application_page_regions';
                p_column_name := 'region_id';
            when 'FIELD' then
                l_template_id_column := 'item_label_template_id';
                l_template_options_column := 'item_template_options';
                l_component_name_column := 'item_name';
                l_template_name_column := 'item_label_template';
                p_table_name := 'apex_application_page_items';
                p_column_name := 'item_id';
            when 'LIST' then
                l_template_id_column := 'list_template_override_id';
                l_template_options_column := 'component_template_options';
                l_component_name_column := 'region_name';
                l_template_name_column := 'template';
                p_table_name := 'apex_application_page_regions';
                p_column_name := 'region_id';
            when 'REGION' then
                l_template_id_column := 'template_id';
                l_template_options_column := 'region_template_options';
                l_component_name_column := 'region_name';
                l_template_name_column := 'template';
                p_table_name := 'apex_application_page_regions';
                p_column_name := 'region_id';
            when 'REPORT' then
                l_template_id_column := 'report_template_id';
                l_template_options_column := 'component_template_options';
                l_component_name_column := 'region_name';
                l_template_name_column := 'template';
                p_table_name := 'apex_application_page_regions';
                p_column_name := 'region_id';
        end case;

        l_sql := 'select ' || l_template_id_column || '
            , ' || l_template_options_column || '
            , ' || l_component_name_column || '
            , ' || l_template_name_column || '
            , ' || p_column_name || '
        from ' || p_table_name || '
        where region_id = :p_region_id
        and rownum = 1'; -- get first component
        -- todo loop over this?

        execute immediate l_sql
        into p_template_id
            , p_template_options
            , l_component_name
            , l_template_name
            , p_column_value
        using p_region_id;

        if l_display_template_options or l_display_grid_attributes or l_display_custom_attributes then
            get_region_title (
                p_html => l_html
                , p_template_type => p_template_type
                , p_component_name => l_component_name
                , p_template_name => l_template_name
            );
        end if;
    end get_component_info;

    procedure get_template_options (
        p_html in out nocopy varchar2
        , p_template_type in varchar2
        , p_template_id in number
        , p_template_options in varchar2
    ) is
        l_template_options apex_application_global.vc_arr2;

        /* c_template_options */
        cursor c_template_options (
            p_template_option varchar2 default null
        ) is
        select ato.display_sequence
            , ato.display_name
            , ato.help_text
        from apex_appl_template_options ato

        where ato.application_id = :APP_ID
        and ato.virtual_template_type = p_template_type
        and ato.group_id is null

        /* specific template */
        and nvl(ato.virtual_template_id, p_template_id) = p_template_id

        /* specific css class */
        and ato.css_classes = nvl(p_template_option, ato.css_classes)

        order by ato.display_sequence
            , ato.display_name;

        /* c_template_option_groups_all */
        cursor c_template_option_groups (
            p_template_option varchar2 default null
        ) is
        select atog.display_sequence group_display_sequence
            , atog.display_name group_name
            , atog.help_text group_help_text
            , ato.display_sequence
            , ato.display_name
            , ato.help_text
        from apex_appl_template_options ato

        join apex_appl_template_opt_groups atog
        on atog.template_opt_group_id = ato.group_id

        where ato.application_id = :APP_ID
        and ato.virtual_template_type = p_template_type

        /* specific template */
        and nvl(ato.virtual_template_id, p_template_id) = p_template_id

        /* specific css class */
        and ato.css_classes = nvl(p_template_option, ato.css_classes)

        order by group_display_sequence
            , group_name
            , display_sequence
            , display_name;

        /* c_template_option_groups_all */
        cursor c_template_option_groups_all (
            p_template_option varchar2 default null
        ) is
        select atog.display_sequence group_display_sequence
            , atog.display_name group_name
            , atog.help_text group_help_text
            , listagg(ato2.display_sequence, ', ') within group (order by ato2.display_sequence) display_sequence
            , listagg(ato2.display_name, ', ') within group (order by ato2.display_sequence) display_name
            , listagg(ato2.help_text, ', ') within group (order by ato2.display_sequence) help_text
        from apex_appl_template_options ato

        join apex_appl_template_opt_groups atog
        on atog.template_opt_group_id = ato.group_id

        join apex_appl_template_options ato2
        on ato2.group_id = ato.group_id

        where ato.application_id = :APP_ID
        and ato.virtual_template_type = p_template_type

        /* specific template */
        and nvl(ato.virtual_template_id, p_template_id) = p_template_id

        /* specific css class */
        and ato.css_classes = nvl(p_template_option, ato.css_classes)

        group by atog.display_sequence
            , atog.display_name
            , atog.help_text

        order by group_display_sequence
            , group_name
            , display_sequence
            , display_name;
    begin
        open_table (
            p_html => p_html
            , p_th1 => 'Template Option'
            , p_th2 => 'Value(s)'
            , p_th3 => 'Comments'
        );

        if l_display_only_associated_to then
            l_template_options := apex_util.string_to_table(p_template_options);

            for i in 1 .. l_template_options.count loop
                if l_template_options(i) = '#DEFAULT#' then
                    get_row (
                        p_html => p_html
                        , p_td1 => 'Use Default'
                        , p_td2 => 'Yes'
                    );
                else
                    if i = 1 then
                        get_row (
                            p_html => p_html
                            , p_td1 => 'Use Default'
                            , p_td2 => 'No'
                        );
                    end if;

                    for j in c_template_options (
                        p_template_option => l_template_options(i)
                    ) loop
                        get_row (
                            p_html => p_html
                            , p_td1 => j.display_name
                            , p_td2 => 'Yes'
                            , p_td3 => j.help_text
                        );
                    end loop;

                    if l_display_all_group_choices then
                        for j in c_template_option_groups_all (
                            p_template_option => l_template_options(i)
                        ) loop
                            get_row (
                                p_html => p_html
                                , p_td1 => j.group_name
                                , p_td2 => j.display_name
                                , p_td3 => j.group_help_text
                            );
                        end loop;
                    else
                        for j in c_template_option_groups (
                            p_template_option => l_template_options(i)
                        ) loop
                            get_row (
                                p_html => p_html
                                , p_td1 => j.group_name
                                , p_td2 => j.display_name
                                , p_td3 => j.group_help_text
                            );
                        end loop;
                    end if;
                end if;
            end loop;
        else
            for j in c_template_options loop
                get_row (
                    p_html => p_html
                    , p_td1 => j.display_name
                    , p_td2 => 'Yes'
                    , p_td3 => j.help_text
                );
            end loop;

            for j in c_template_option_groups loop
                get_row (
                    p_html => p_html
                    , p_td1 => j.group_name
                    , p_td2 => j.display_name
                    , p_td3 => j.group_help_text
                );
            end loop;
        end if;

        close_table(p_html);
    end get_template_options;

    procedure get_grid_attributes (
        p_html in out nocopy varchar2
        , p_table_name in varchar2
        , p_column_name in varchar2
        , p_column_value in number
    ) is
        type t_grid is ref cursor;
        rc_grid t_grid;

        l_sql varchar2(4000);

        l_attribute varchar2(255);
        l_value varchar2(255);
    begin
        l_sql :=
        'select attribute, value
        from (
            select to_char(new_grid) as new_grid
                ,to_char(new_grid_row) as new_grid_row
                ,to_char(new_grid_column) as new_grid_column
                ,to_char(grid_column) as grid_column
                ,to_char(grid_column_span) as grid_column_span
                ,to_char(grid_column_css_classes) as grid_column_css_classes
                ,to_char(grid_column_attributes) as grid_column_attributes
            from ' || p_table_name || '
            where ' || p_column_name || '= :column_value
        )
        unpivot exclude nulls (value for attribute in (
            new_grid
            ,new_grid_row
            ,new_grid_column
            ,grid_column
            ,grid_column_span
            ,grid_column_css_classes
            ,grid_column_attributes
        ))';

        open_table (
            p_html => p_html
            , p_th1 => 'Grid Attribute'
            , p_th2 => 'Value'
        );

        open rc_grid for l_sql using p_column_value;

        loop
            fetch rc_grid into l_attribute, l_value;

            get_row (
                p_html => p_html
                , p_td1 => replace(initcap(l_attribute),'_',' ')
                , p_td2 => l_value
            );

            exit when rc_grid%notfound;
        end loop;

        close rc_grid;

        close_table(p_html);

    end get_grid_attributes;

    procedure get_custom_attributes (
        p_html in out nocopy varchar2
        , p_template_type in varchar2
        , p_column_value in varchar2
    ) is
        /* c_button_custom_attributes */
        cursor c_button_custom_attributes is
        select attribute, value
        from (
            select to_char(image_name) as image_name
                , to_char(image_attributes) as image_attributes
                , to_char(button_css_classes) as button_css_classes
                , to_char(icon_css_classes) as icon_css_classes
                , to_char(button_attributes) as button_attributes
                , to_char(pre_element_text) as pre_element_text
                , to_char(post_element_text) as post_element_text
            from apex_application_page_buttons
            where button_id = p_column_value
        )
        unpivot exclude nulls (value for attribute in (
            image_name
            , image_attributes
            , button_css_classes
            , icon_css_classes
            , button_attributes
            , pre_element_text
            , post_element_text
        ));

        /* c_field_custom_attributes */
        cursor  c_field_custom_attributes is
        select attribute, value
        from (
            select to_char(display_as) as display_as
                , to_char(placeholder) as placeholder
                , to_char(pre_element_text) as pre_element_text
                , to_char(post_element_text) as post_element_text
                , to_char(format_mask) as format_mask
                , to_char(html_form_element_css_classes) as html_form_element_css_classes
                , to_char(html_form_element_attributes) as html_form_element_attributes
                , to_char(form_element_option_attributes) as form_element_option_attributes
                , to_char(item_button_image) as item_button_image
                , to_char(item_button_image_attributes) as item_button_image_attributes
            from apex_application_page_items
            where item_id = p_column_value
        )
        unpivot exclude nulls (value for attribute in (
            display_as
            , placeholder
            , pre_element_text
            , post_element_text
            , format_mask
            , html_form_element_css_classes
            , html_form_element_attributes
            , form_element_option_attributes
            , item_button_image
            , item_button_image_attributes
        ));

        /* c_region_custom_attributes */
        cursor c_region_custom_attributes is
        select attribute, value
        from (
            select to_char(report_template) as report_template
                , to_char(icon_css_classes) as icon_css_classes
                , to_char(region_attributes_substitution) as region_attributes_substitution
                , to_char(report_column_headings) as report_column_headings
                , to_char(pagination_scheme) as pagination_scheme
                , to_char(pagination_display_position) as pagination_display_position
                , to_char(breaks) as breaks
            from apex_application_page_regions
            where region_id = p_column_value
        )
        unpivot exclude nulls (value for attribute in (
            icon_css_classes
            , region_attributes_substitution
            , report_template
            , report_column_headings
            , pagination_scheme
            , pagination_display_position
            , breaks
        ));

        /* c_list_custom_attributes */
        cursor c_list_custom_attributes is
        select attribute, value
        from (
            select to_char(atl.a01_label) as a01_label
                , to_char(atl.a02_label) as a02_label
                , to_char(atl.a03_label) as a03_label
                , to_char(atl.a04_label) as a04_label
                , to_char(atl.a05_label) as a05_label
                , to_char(atl.a06_label) as a06_label
                , to_char(atl.a07_label) as a07_label
                , to_char(atl.a08_label) as a08_label
                , to_char(atl.a09_label) as a09_label
                , to_char(atl.a10_label) as a10_label
            from apex_application_page_regions apr
            join apex_application_temp_list atl
            on atl.application_id = apr.application_id
            and atl.list_template_id = apr.list_template_override_id
            where apr.region_id = p_column_value
        )
        unpivot exclude nulls (value for attribute in (
            a01_label
            , a02_label
            , a03_label
            , a04_label
            , a05_label
            , a06_label
            , a07_label
            , a08_label
            , a09_label
            , a10_label
        ));
    begin
        open_table (
            p_html => p_html
            , p_th1 => 'Custom Attribute'
            , p_th2 => 'Value'
        );

        case p_template_type
            when 'BUTTON' then
                for i in c_button_custom_attributes loop
                    get_row (
                        p_html => p_html
                        , p_td1 => replace(initcap(i.attribute),'_',' ')
                        , p_td2 => i.value
                    );
                end loop;
            when 'FIELD' then
                for i in c_field_custom_attributes loop
                    get_row (
                        p_html => p_html
                        , p_td1 => replace(initcap(i.attribute),'_',' ')
                        , p_td2 => i.value
                    );
                end loop;
            when 'LIST' then
                for i in c_list_custom_attributes loop
                    get_row (
                        p_html => p_html
                        , p_td1 => replace(initcap(i.attribute),'_',' ')
                        , p_td2 => i.value
                    );
                end loop;
            when 'REGION' then
                for i in c_region_custom_attributes loop
                    get_row (
                        p_html => p_html
                        , p_td1 => replace(initcap(i.attribute),'_',' ')
                        , p_td2 => i.value
                    );
                end loop;
            when 'REPORT' then
                for i in c_region_custom_attributes loop
                    get_row (
                        p_html => p_html
                        , p_td1 => replace(initcap(i.attribute),'_',' ')
                        , p_td2 => i.value
                    );
                end loop;
            else
                null;
        end case;

        close_table(p_html);
    end get_custom_attributes;
begin
    /* debug information will be included */
    if apex_application.g_debug then
        apex_plugin_util.debug_region (
            p_plugin => p_plugin
            , p_region => p_region
            , p_is_printer_friendly => p_is_printer_friendly
        );
    end if;

    /* plugin should always be a sub-region */
    /* get the parent_region_id from this plugin */
    for i in c_sibling_regions loop
        get_component_info (
            p_template_type => l_template_type
            , p_region_id => i.region_id
            , p_table_name => l_table_name
            , p_column_name => l_column_name
            , p_column_value => l_column_value
            , p_template_id => l_template_id
            , p_template_options => l_template_options
        );

        if l_display_template_options then
            get_template_options (
                p_html => l_html
                , p_template_type => l_template_type
                , p_template_id => l_template_id
                , p_template_options => l_template_options
            );
        end if;

        if l_display_grid_attributes then
            get_grid_attributes (
                p_html => l_html
                , p_table_name => l_table_name
                , p_column_name => l_column_name
                , p_column_value => l_column_value
            );
        end if;

        if l_display_custom_attributes then
            get_custom_attributes (
                p_html => l_html
                , p_template_type => l_template_type
                , p_column_value => l_column_value
            );
        end if;

        sys.htp.p(l_html);
        l_html := null;
    end loop;

    return l_result;
end render;
