function render_theme_documentation (
    p_region in apex_plugin.t_region
    ,p_plugin in apex_plugin.t_plugin
    ,p_is_printer_friendly in boolean )
return apex_plugin.t_region_render_result
as
    subtype plugin_attr is varchar2(32767);

    /* Variables */
    l_result apex_plugin.t_region_render_result;
    l_html varchar2(32767);

    /* Component attributes */
    l_component_type         plugin_attr := p_region.attribute_01;
    l_documentation_type     plugin_attr := p_region.attribute_02;
    l_component_id           plugin_attr := p_region.attribute_03;
    l_displayed_info         plugin_attr := p_region.attribute_04;
    l_template_option_group  plugin_attr := p_region.attribute_05;
    l_template_option_single plugin_attr := p_region.attribute_06;
    l_include_globals        plugin_attr := p_region.attribute_07;

    /* cursors */
    /* c_template_option_groups */
    cursor c_template_option_groups is
    select ato.display_name
        , ato.help_text
    from apex_appl_template_opt_groups atog

    join apex_appl_template_options ato
    on ato.application_id = atog.application_id
    and ato.theme_number = atog.theme_number
    and ato.group_id = atog.template_opt_group_id

    where atog.application_id = :APP_ID
    and atog.name = l_template_option_group
    and atog.template_types = l_component_type;

    /* c_template_option_single */
    cursor c_template_option_single is
    select ato.display_name
        , ato.help_text
    from apex_appl_template_options ato
    where ato.application_id = :APP_ID
    and ato.name = l_template_option_single;

    /* c_global_template_options */
    cursor c_global_template_options is
    select atog.display_name group_name
        , ato.display_name
        , ato.help_text
    from apex_appl_template_options ato

    left join apex_appl_template_opt_groups atog
    on atog.application_id = ato.application_id
    and atog.theme_number = ato.theme_number
    and atog.template_opt_group_id = ato.group_id

    where ato.application_id = :APP_ID
    and ato.virtual_template_type = l_component_type
    and l_include_globals = 'Y';

    /* c_button_all_template_options */
    cursor c_button_all_template_options is
    select atog.display_name group_name
        , ato.display_name
        , ato.help_text
    from apex_application_page_buttons apb

    join apex_appl_template_options ato
    on ato.application_id = apb.application_id
    and ato.button_template_id = apb.button_template_id

    left join apex_appl_template_opt_groups atog
    on atog.application_id = ato.application_id
    and atog.theme_number = ato.theme_number
    and atog.template_opt_group_id = ato.group_id

    where   apb.application_id = :APP_ID
    and     apb.page_id = :APP_PAGE_ID
    and     ltrim(apb.button_static_id,'#') = ltrim(l_component_id,'#');

    /* c_button_grid_attributes */
    cursor  c_button_grid_attributes is
    select attribute, value
    from (
        select to_char(new_grid) as new_grid
            ,to_char(new_grid_row) as new_grid_row
            ,to_char(new_grid_column) as new_grid_column
            ,to_char(grid_column) as grid_column
            ,to_char(grid_column_span) as grid_column_span
            ,to_char(grid_column_css_classes) as grid_column_css_classes
            ,to_char(grid_column_attributes) as grid_column_attributes
        from apex_application_page_buttons
        where application_id = :APP_ID
        and page_id = :APP_PAGE_ID
        and ltrim(button_static_id,'#') = ltrim(l_component_id,'#')
    )
    unpivot exclude nulls (value for attribute in (
        new_grid
        ,new_grid_row
        ,new_grid_column
        ,grid_column
        ,grid_column_span
        ,grid_column_css_classes
        ,grid_column_attributes
    ));

    /* c_button_custom_attributes */
    cursor  c_button_custom_attributes is
    select attribute, value
    from (
        select to_char(button_template) as button_template
            ,to_char(image_name) as image_name
            ,to_char(image_attributes) as image_attributes
            ,to_char(button_css_classes) as button_css_classes
            ,to_char(icon_css_classes) as icon_css_classes
            ,to_char(button_attributes) as button_attributes
            ,to_char(pre_element_text) as pre_element_text
            ,to_char(post_element_text) as post_element_text
        from apex_application_page_buttons
        where application_id = :APP_ID
        and page_id = :APP_PAGE_ID
        and ltrim(button_static_id,'#') = ltrim(l_component_id,'#')
    )
    unpivot exclude nulls (value for attribute in (
         button_template
        ,image_name
        ,image_attributes
        ,button_css_classes
        ,icon_css_classes
        ,button_attributes
        ,pre_element_text
        ,post_element_text
    ));

    /* c_item_all_template_options */
    cursor c_item_all_template_options is
    select atog.display_name group_name
        ,ato.display_name
        ,ato.help_text
    from apex_application_page_items api

    join apex_appl_template_options ato
    on ato.application_id = api.application_id
    and ato.field_template_id = api.item_label_template_id

    left join apex_appl_template_opt_groups atog
    on atog.application_id = ato.application_id
    and atog.theme_number = ato.theme_number
    and atog.template_opt_group_id = ato.group_id

    where api.application_id = :APP_ID
    and api.page_id = :APP_PAGE_ID
    and ltrim(api.item_name,'#') = ltrim(l_component_id,'#');

    /* c_item_grid_attributes */
    cursor  c_item_grid_attributes is
    select attribute, value
    from (
        select to_char(new_grid) as new_grid
            ,to_char(new_grid_row) as new_grid_row
            ,to_char(new_grid_column) as new_grid_column
            ,to_char(grid_column) as grid_column
            ,to_char(grid_column_span) as grid_column_span
            ,to_char(grid_column_css_classes) as grid_column_css_classes
            ,to_char(grid_column_attributes) as grid_column_attributes
        from apex_application_page_items
        where application_id = :APP_ID
        and page_id = :APP_PAGE_ID
        and ltrim(item_name,'#') = ltrim(l_component_id,'#')
    )
    unpivot exclude nulls (value for attribute in (
        new_grid
        ,new_grid_row
        ,new_grid_column
        ,grid_column
        ,grid_column_span
        ,grid_column_css_classes
        ,grid_column_attributes
    ));

    /* c_item_custom_attributes */
    cursor  c_item_custom_attributes is
    select attribute, value
    from (
        select to_char(display_as) as display_as
            ,to_char(placeholder) as placeholder
            ,to_char(pre_element_text) as pre_element_text
            ,to_char(post_element_text) as post_element_text
            ,to_char(format_mask) as format_mask
            ,to_char(item_label_template) as item_label_template
            ,to_char(html_table_cell_attr_label) as html_table_cell_attr_label
            ,to_char(html_table_cell_attr_element) as html_table_cell_attr_element
            ,to_char(html_form_element_css_classes) as html_form_element_css_classes
            ,to_char(html_form_element_attributes) as html_form_element_attributes
            ,to_char(form_element_option_attributes) as form_element_option_attributes
            ,to_char(item_button_image) as item_button_image
            ,to_char(item_button_image_attributes) as item_button_image_attributes
            ,to_char(item_help_text) as item_help_text
        from apex_application_page_items api
        where api.application_id = :APP_ID
        and api.page_id = :APP_PAGE_ID
        and ltrim(api.item_name,'#') = ltrim(l_component_id,'#')
    )
    unpivot exclude nulls (value for attribute in (
        display_as
        ,placeholder
        ,pre_element_text
        ,post_element_text
        ,format_mask
        ,item_label_template
        ,html_table_cell_attr_label
        ,html_table_cell_attr_element
        ,html_form_element_css_classes
        ,html_form_element_attributes
        ,form_element_option_attributes
        ,item_button_image
        ,item_button_image_attributes
        ,item_help_text
    ));

    /* c_region_all_template_options */
    cursor c_region_all_template_options is
    select atog.display_name group_name
        ,ato.display_name
        ,ato.help_text
    from apex_application_page_regions apr

    join apex_appl_template_options ato
    on ato.application_id = apr.application_id
    and ato.region_template_id = apr.template_id

    left join apex_appl_template_opt_groups atog
    on atog.application_id = ato.application_id
    and atog.theme_number = ato.theme_number
    and atog.template_opt_group_id = ato.group_id

    where apr.application_id = :APP_ID
    and apr.page_id = :APP_PAGE_ID
    and ltrim(apr.static_id,'#') = ltrim(l_component_id,'#');

    /* c_report_all_template_options */
    cursor c_report_all_template_options is
    select atog.display_name group_name
            ,ato.display_name
            ,ato.help_text
    from apex_application_page_regions apr
    join apex_appl_template_options ato
    on ato.application_id = apr.application_id
    and ato.report_template_id = apr.report_template_id
    left join apex_appl_template_opt_groups atog
    on atog.application_id = ato.application_id
    and atog.theme_number = ato.theme_number
    and atog.template_opt_group_id = ato.group_id
    where apr.application_id = :APP_ID
    and apr.page_id = :APP_PAGE_ID
    and ltrim(apr.static_id,'#') = ltrim(l_component_id,'#');

    /* c_region_grid_attributes */
    cursor  c_region_grid_attributes is
    select attribute, value
    from (
        select to_char(new_grid) as new_grid
            ,to_char(new_grid_row) as new_grid_row
            ,to_char(new_grid_column) as new_grid_column
            ,to_char(grid_column) as grid_column
            ,to_char(grid_column_span) as grid_column_span
            ,to_char(grid_column_css_classes) as grid_column_css_classes
            ,to_char(grid_column_attributes) as grid_column_attributes
        from apex_application_page_regions
        where application_id = :APP_ID
        and page_id = :APP_PAGE_ID
        and ltrim(static_id,'#') = ltrim(l_component_id,'#')
    )
    unpivot exclude nulls (value for attribute in (
        new_grid
        ,new_grid_row
        ,new_grid_column
        ,grid_column
        ,grid_column_span
        ,grid_column_css_classes
        ,grid_column_attributes
    ));

    /* c_region_custom_attributes */
    cursor c_region_custom_attributes is
    select attribute, value
    from (select to_char(template) as template
                ,to_char(report_template) as report_template
                ,to_char(region_css_classes) as region_css_classes
                ,to_char(icon_css_classes) as icon_css_classes
                ,to_char(region_sub_css_classes) as region_sub_css_classes
                ,to_char(region_attributes_substitution) as region_attributes_substitution
                ,to_char(report_column_headings) as report_column_headings
                ,to_char(pagination_scheme) as pagination_scheme
                ,to_char(pagination_display_position) as pagination_display_position
                ,to_char(number_of_rows_item) as number_of_rows_item
                ,to_char(maximum_row_count) as maximum_row_count
                ,to_char(breaks) as breaks
                ,to_char(max_dynamic_report_cols) as max_dynamic_report_cols
                ,to_char(fixed_header) as fixed_header
                ,to_char(fixed_header_max_height) as fixed_header_max_height
                ,to_char(repeat_heading_break_format) as repeat_heading_break_format
        from apex_application_page_regions
        where application_id = :APP_ID
        and page_id = :APP_PAGE_ID
        and ltrim(static_id,'#') = ltrim(l_component_id,'#')
    )
    unpivot exclude nulls (value for attribute in (
        template
        ,region_css_classes
        ,icon_css_classes
        ,region_sub_css_classes
        ,region_attributes_substitution
        ,report_template
        ,report_column_headings
        ,pagination_scheme
        ,pagination_display_position
        ,number_of_rows_item
        ,maximum_row_count
        ,breaks
        ,max_dynamic_report_cols
        ,fixed_header
        ,fixed_header_max_height
        ,repeat_heading_break_format
    ));

    /* c_list_all_template_options */
    cursor c_list_all_template_options is
    select atog.display_name group_name
            ,ato.display_name
            ,ato.help_text
    from apex_application_page_regions apr

    join apex_application_temp_list atl
    on atl.application_id = apr.application_id
    and atl.list_template_id = apr.list_template_override_id

    join apex_appl_template_options ato
    on ato.application_id = apr.application_id
    and ato.list_template_id = apr.template_id

    left join apex_appl_template_opt_groups atog
    on atog.application_id = ato.application_id
    and atog.theme_number = ato.theme_number
    and atog.template_opt_group_id = ato.group_id

    where apr.application_id = :APP_ID
    and apr.page_id = :APP_PAGE_ID
    and ltrim(apr.static_id,'#') = ltrim(l_component_id,'#');

    /* c_list_custom_attributes */
    cursor c_list_custom_attributes is
    select attribute, value
    from (
        select to_char(atl.a01_label) as a01_label
            ,to_char(atl.a02_label) as a02_label
            ,to_char(atl.a03_label) as a03_label
            ,to_char(atl.a04_label) as a04_label
            ,to_char(atl.a05_label) as a05_label
            ,to_char(atl.a06_label) as a06_label
            ,to_char(atl.a07_label) as a07_label
            ,to_char(atl.a08_label) as a08_label
            ,to_char(atl.a09_label) as a09_label
            ,to_char(atl.a10_label) as a10_label
            ,to_char(atl.a11_label) as a11_label
            ,to_char(atl.a12_label) as a12_label
            ,to_char(atl.a13_label) as a13_label
            ,to_char(atl.a14_label) as a14_label
            ,to_char(atl.a15_label) as a15_label
            ,to_char(atl.a16_label) as a16_label
            ,to_char(atl.a17_label) as a17_label
            ,to_char(atl.a18_label) as a18_label
            ,to_char(atl.a19_label) as a19_label
            ,to_char(atl.a20_label) as a20_label
        from apex_application_page_regions apr
        join apex_application_temp_list atl
        on atl.application_id = apr.application_id
        and atl.list_template_id = apr.list_template_override_id
        where apr.application_id = :APP_ID
        and apr.page_id = :APP_PAGE_ID
        and ltrim(apr.static_id,'#') = ltrim(l_component_id,'#')
    )
    unpivot exclude nulls (value for attribute in (
        a01_label
        ,a02_label
        ,a03_label
        ,a04_label
        ,a05_label
        ,a06_label
        ,a07_label
        ,a08_label
        ,a09_label
        ,a10_label
        ,a11_label
        ,a12_label
        ,a13_label
        ,a14_label
        ,a15_label
        ,a16_label
        ,a17_label
        ,a18_label
        ,a19_label
        ,a20_label
    ));

    /* helper functions */
    function open_table(
        p_th1 in varchar2
        ,p_th2 in varchar2
        ,p_th3 in varchar2 default '-1'
        ,p_top_th in varchar2 default null
    ) return varchar2 is
    begin
        return '<table class="bordered highlight">'
            || case when p_top_th is not null then
                '<thead>'
                || '<tr>'
                || '<th colspan="'
                || case when p_th3 = '-1' then 2 else 3 end
                || '" class="text-nowrap">' || replace(initcap(p_top_th),'_',' ') || '</th>'
                || '</tr>'
                || '</thead>'
            end
            || '<thead class="thead-default">'
            || '<tr>'
            || '<th class="text-nowrap">' || p_th1 || '</th>'
            || '<th class="text-nowrap">' || p_th2 || '</th>'
            || case when p_th3 = '-1' then null else '<th class="text-nowrap">' || p_th3 || '</th>' end
            || '</tr>'
            || '</thead>'
            || '<tbody>';
    end open_table;

    function print_row(
        p_td1 in varchar2
        ,p_td2 in varchar2
        ,p_td3 in varchar2 default '-1'
    ) return varchar2 is
    begin
        return '<tr>'
            || '<td>' || replace(initcap(p_td1),'_',' ') || '</td>'
            || '<td>' || p_td2 || '</td>'
            || case when p_td3 = '-1' then null else '<td>' || p_td3 || '</td>' end
            || '</tr>';
    end print_row;

    function close_table
    return varchar2 is
    begin
        return '</tbody>'
            || '</table>';
    end close_table;
begin
    /* debug information will be included */
    if apex_application.g_debug then
        apex_plugin_util.debug_region(
            p_plugin=>p_plugin,
            p_region=>p_region,
            p_is_printer_friendly=>p_is_printer_friendly);
    end if;

    case l_documentation_type
        when 'GROUP' then
            l_html := l_html || open_table(
                p_th1=>'Template Option'
                ,p_th2=>'Comment'
                ,p_top_th=>l_component_type || ' Template Option Group: ' || l_template_option_group
            );

            for i in c_template_option_groups loop
                l_html := l_html || print_row(
                    p_td1=>i.display_name
                    ,p_td2=>i.help_text
                );
            end loop;

            l_html := l_html || close_table;
        when 'SINGLE' then
            l_html := l_html || open_table(
                p_th1=>'Template Option'
                ,p_th2=>'Comment'
                ,p_top_th=>'Template Option: ' || l_template_option_single
            );

            for i in c_template_option_single loop
                l_html := l_html || print_row(
                    p_td1=>i.display_name
                    ,p_td2=>i.help_text
                );
            end loop;

            l_html := l_html || close_table;
        when 'COMPONENT' then
            case l_component_type
                when 'BUTTON' then
                    if l_displayed_info like '%ALL_TEMPLATE_OPTIONS%' then
                        l_html := l_html || open_table(
                            p_th1=>'Group'
                            ,p_th2=>'Template Option'
                            ,p_th3=>'Comment'
                            ,p_top_th=>l_component_type || ' Template Options'
                        );

                        for i in c_button_all_template_options loop
                            l_html := l_html || print_row(
                                p_td1=>i.group_name
                                ,p_td2=>i.display_name
                                ,p_td3=>i.help_text
                            );
                        end loop;

                        for i in c_global_template_options loop
                            l_html := l_html || print_row(
                                p_td1=>i.group_name
                                ,p_td2=>i.display_name
                                ,p_td3=>i.help_text
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;

                    if l_displayed_info like '%GRID_ATTRIBUTES%' then
                        l_html := l_html || open_table(
                            p_th1=>'Attribute'
                            ,p_th2=>'Value'
                            ,p_top_th=>'Grid Attributes'
                        );

                        for i in c_button_grid_attributes loop
                            l_html := l_html || print_row(
                                p_td1=>i.attribute
                                ,p_td2=>i.value
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;

                    if l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                        l_html := l_html || open_table(
                            p_th1=>'Attribute'
                            ,p_th2=>'Value'
                            ,p_top_th=>l_component_type || ' Attributes'
                        );

                        for i in c_button_custom_attributes loop
                            l_html := l_html || print_row(
                                p_td1=>i.attribute
                                ,p_td2=>i.value
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;
                when 'BREADCRUMB' then
                    null;
                when 'FIELD' then
                    if l_displayed_info like '%ALL_TEMPLATE_OPTIONS%' then
                        l_html := l_html || open_table(
                            p_th1=>'Group'
                            ,p_th2=>'Template Option'
                            ,p_th3=>'Comment'
                            ,p_top_th=>l_component_type || ' Template Options'
                        );

                        for i in c_item_all_template_options loop
                            l_html := l_html || print_row(
                                p_td1=>i.group_name
                                ,p_td2=>i.display_name
                                ,p_td3=>i.help_text
                            );
                        end loop;

                        for i in c_global_template_options loop
                            l_html := l_html || print_row(
                                p_td1=>i.group_name
                                ,p_td2=>i.display_name
                                ,p_td3=>i.help_text
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;

                    if l_displayed_info like '%GRID_ATTRIBUTES%' then
                        l_html := l_html || open_table(
                            p_th1=>'Attribute'
                            ,p_th2=>'Value'
                            ,p_top_th=>'Grid Attributes'
                        );

                        for i in c_item_grid_attributes loop
                            l_html := l_html || print_row(
                                p_td1=>i.attribute
                                ,p_td2=>i.value
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;

                    if l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                        l_html := l_html || open_table(
                            p_th1=>'Attribute'
                            ,p_th2=>'Value'
                            ,p_top_th=>l_component_type || ' Attributes'
                        );

                        for i in c_item_custom_attributes loop
                            l_html := l_html || print_row(
                                p_td1=>i.attribute
                                ,p_td2=>i.value
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;
                when 'LIST' then
                    if l_displayed_info like '%ALL_TEMPLATE_OPTIONS%' then
                        l_html := l_html || open_table(
                            p_th1=>'Group'
                            ,p_th2=>'Template Option'
                            ,p_th3=>'Comment'
                            ,p_top_th=>l_component_type || ' Template Options'
                        );

                        for i in c_list_all_template_options loop
                            l_html := l_html || print_row(
                                p_td1=>i.group_name
                                ,p_td2=>i.display_name
                                ,p_td3=>i.help_text
                            );
                        end loop;

                        for i in c_global_template_options loop
                            l_html := l_html || print_row(
                                p_td1=>i.group_name
                                ,p_td2=>i.display_name
                                ,p_td3=>i.help_text
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;

                    if l_displayed_info like '%GRID_ATTRIBUTES%' then
                        l_html := l_html || open_table(
                            p_th1=>'Attribute'
                            ,p_th2=>'Value'
                            ,p_top_th=>'Grid Attributes'
                        );

                        for i in c_region_grid_attributes loop
                            l_html := l_html || print_row(
                                p_td1=>i.attribute
                                ,p_td2=>i.value
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;

                    if l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                        l_html := l_html || open_table(
                            p_th1=>'Attribute'
                            ,p_th2=>'Value'
                            ,p_top_th=>l_component_type || ' Custom Attributes'
                        );

                        for i in c_list_custom_attributes loop
                            l_html := l_html || print_row(
                                p_td1=>i.attribute
                                ,p_td2=>i.value
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;
                when 'PAGE' then
                    null;
                when 'REGION' then
                    if l_displayed_info like '%ALL_TEMPLATE_OPTIONS%' then
                        l_html := l_html || open_table(
                            p_th1=>'Group'
                            ,p_th2=>'Template Option'
                            ,p_th3=>'Comment'
                            ,p_top_th=>l_component_type || ' Template Options'
                        );

                        for i in c_region_all_template_options loop
                            l_html := l_html || print_row(
                                p_td1=>i.group_name
                                ,p_td2=>i.display_name
                                ,p_td3=>i.help_text
                            );
                        end loop;

                        for i in c_global_template_options loop
                            l_html := l_html || print_row(
                                p_td1=>i.group_name
                                ,p_td2=>i.display_name
                                ,p_td3=>i.help_text
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;

                    if l_displayed_info like '%GRID_ATTRIBUTES%' then
                        l_html := l_html || open_table(
                            p_th1=>'Attribute'
                            ,p_th2=>'Value'
                            ,p_top_th=>'Grid Attributes'
                        );

                        for i in c_region_grid_attributes loop
                            l_html := l_html || print_row(
                                p_td1=>i.attribute
                                ,p_td2=>i.value
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;

                    if l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                        l_html := l_html || open_table(
                            p_th1=>'Attribute'
                            ,p_th2=>'Value'
                            ,p_top_th=>l_component_type || ' Attributes'
                        );

                        for i in c_region_custom_attributes loop
                            l_html := l_html || print_row(
                                p_td1=>i.attribute
                                ,p_td2=>i.value
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;
                when 'REPORT' then
                    if l_displayed_info like '%ALL_TEMPLATE_OPTIONS%' then
                        l_html := l_html || open_table(
                            p_th1=>'Group'
                            ,p_th2=>'Template Option'
                            ,p_th3=>'Comment'
                            ,p_top_th=>l_component_type || ' Template Options'
                        );

                        for i in c_report_all_template_options loop
                            l_html := l_html || print_row(
                                p_td1=>i.group_name
                                ,p_td2=>i.display_name
                                ,p_td3=>i.help_text
                            );
                        end loop;

                        for i in c_global_template_options loop
                            l_html := l_html || print_row(
                                p_td1=>i.group_name
                                ,p_td2=>i.display_name
                                ,p_td3=>i.help_text
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;

                    if l_displayed_info like '%GRID_ATTRIBUTES%' then
                        l_html := l_html || open_table(
                            p_th1=>'Attribute'
                            ,p_th2=>'Value'
                            ,p_top_th=>'Grid Attributes'
                        );

                        for i in c_region_grid_attributes loop
                            l_html := l_html || print_row(
                                p_td1=>i.attribute
                                ,p_td2=>i.value
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;

                    if l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                        l_html := l_html || open_table(
                            p_th1=>'Attribute'
                            ,p_th2=>'Value'
                            ,p_top_th=>l_component_type || ' Attributes'
                        );

                        for i in c_region_custom_attributes loop
                            l_html := l_html || print_row(
                                p_td1=>i.attribute
                                ,p_td2=>i.value
                            );
                        end loop;

                        l_html := l_html || close_table;
                    end if;
            end case;
    end case;

    htp.prn(l_html);

    return l_result;
end render_theme_documentation;
