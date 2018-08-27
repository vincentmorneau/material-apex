function render (
	p_dynamic_action in apex_plugin.t_dynamic_action
	, p_plugin in apex_plugin.t_plugin
) return apex_plugin.t_dynamic_action_render_result
is
	subtype plugin_attr is varchar2(32767);

	l_result apex_plugin.t_dynamic_action_render_result;
	l_tap_target_html plugin_attr;
begin
	l_tap_target_html := '<div class=''tap-target'' style=''color:' || p_dynamic_action.attribute_01 || '; background-color:' || p_dynamic_action.attribute_04 || ';'' data-target=''" + this.affectedElements.selector.substr(1) + "''>'
	|| '<div class=''tap-target-content''>'
	|| '<h5>' || p_dynamic_action.attribute_02 || '</h5>'
	|| '<p>' || p_dynamic_action.attribute_03 || '</p>'
	|| '</div>'
	|| '</div>';

	l_result.javascript_function := 'function(){ '
		|| ' $(".tap-target").remove();'
		|| ' $("body").append("' || l_tap_target_html || '"); '
		|| ' $(".tap-target").tapTarget("open"); '
		|| ' }';

	return l_result;
end render;
