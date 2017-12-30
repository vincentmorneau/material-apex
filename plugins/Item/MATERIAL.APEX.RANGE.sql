function render (
	p_item in apex_plugin.t_page_item
	, p_plugin in apex_plugin.t_plugin
	, p_value in varchar2
	, p_is_readonly in boolean
	, p_is_printer_friendly in boolean
) return apex_plugin.t_page_item_render_result as
	subtype plugin_attr is varchar2(32767);

	l_disabled varchar2(15);
	l_id_suffix varchar2(15);

	/* Global variables */
	l_result apex_plugin.t_page_item_render_result;

	/* Item Attributes */
	l_min plugin_attr := p_item.attribute_01;
	l_max plugin_attr := p_item.attribute_02;
begin
	/* debug information will be included */
	if apex_application.g_debug then
		apex_plugin_util.debug_page_item (
			p_plugin => p_plugin
			, p_page_item => p_item
			, p_value => p_value
			, p_is_readonly => p_is_readonly
			, p_is_printer_friendly => p_is_printer_friendly
		);
	end if;

	if p_is_readonly then
		apex_plugin_util.print_hidden_if_readonly (
			p_item_name => p_item.name
			, p_value => p_value
			, p_is_readonly => p_is_readonly
			, p_is_printer_friendly => p_is_printer_friendly
		);

		l_result.is_navigable := false;

		l_id_suffix := '_DISPLAY';
		l_disabled := ' disabled ';
	end if;

	htp.p('<p class="range-field">'
		|| '<input type="range"'
		|| ' id="' || p_item.name || l_id_suffix || '"'
		|| ' class="' || p_item.element_css_classes || '"'
		|| ' name="' || apex_plugin.get_input_name_for_page_item(false) || '"'
		|| ' value="' || p_value || '"'
		|| ' min="' || l_min || '"'
		|| ' max="' || l_max || '"'
		|| ' ' || p_item.element_attributes
		|| l_disabled
		|| '>'
		|| '</p>');

	return l_result;
end render;
