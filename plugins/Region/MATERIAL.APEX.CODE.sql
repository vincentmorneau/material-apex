function render (
	p_region in apex_plugin.t_region
	, p_plugin in apex_plugin.t_plugin
	, p_is_printer_friendly in boolean
) return apex_plugin.t_region_render_result as
	subtype plugin_attr is varchar2(32767);

	/* Global variables */
	l_result apex_plugin.t_region_render_result;
	l_plugin_html plugin_attr;

	/* t_region Attributes */
	l_language_type plugin_attr := p_region.attribute_01;
	l_source_code plugin_attr := p_region.attribute_02;
begin
	/* debug information will be included */
	if apex_application.g_debug then
		apex_plugin_util.debug_region (
			p_plugin => p_plugin
			, p_region => p_region
			, p_is_printer_friendly => p_is_printer_friendly
		);
	end if;

	l_plugin_html := '<pre class="card"><code class="' || l_language_type || '">'
		|| apex_escape.html(l_source_code)
		|| '</code></pre>';

	sys.htp.p(l_plugin_html);

	return l_result;
end render;
