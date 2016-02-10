set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>50654249616769752
,p_default_application_id=>59075
,p_default_owner=>'APEX_VMORNEAU'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/material_apex_staggered_list
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(19285103868720170002)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'MATERIAL.APEX.STAGGERED.LIST'
,p_display_name=>'Material APEX - Staggered List'
,p_category=>'MISC'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render_staggered_list (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin )',
'return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_result apex_plugin.t_dynamic_action_render_result;',
'begin',
'    l_result.javascript_function := ''function(){Materialize.showStaggeredList(this.affectedElements.selector + "_report");}'';',
'    ',
'    return l_result;        ',
'end render_staggered_list;'))
,p_render_function=>'render_staggered_list'
,p_standard_attributes=>'REGION:JQUERY_SELECTOR:REQUIRED:ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
