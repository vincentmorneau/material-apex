function render (
	p_dynamic_action in apex_plugin.t_dynamic_action
	, p_plugin in apex_plugin.t_plugin
) return apex_plugin.t_dynamic_action_render_result
is
	l_result apex_plugin.t_dynamic_action_render_result;
begin
	l_result.javascript_function := 'function(){ '
		|| ' $(".tap-target").tapTarget("close"); '
		|| ' }';

	return l_result;
end render;
