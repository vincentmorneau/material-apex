function render (
	p_dynamic_action in apex_plugin.t_dynamic_action
	, p_plugin in apex_plugin.t_plugin
) return apex_plugin.t_dynamic_action_render_result
is
	l_result apex_plugin.t_dynamic_action_render_result;
begin
	/* debug information will be included */
	if apex_application.g_debug then
		apex_plugin_util.debug_dynamic_action (
			p_plugin => p_plugin
			, p_dynamic_action => p_dynamic_action
		);
	end if;

	l_result.javascript_function := 'function(){$(".u-Processing").remove();}';

	return l_result;
end render;
