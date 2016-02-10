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
prompt --application/shared_components/plugins/dynamic_action/material_apex_toast
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(19331527656187384966)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'MATERIAL.APEX.TOAST'
,p_display_name=>'Material APEX - Toast'
,p_category=>'MISC'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin )',
'return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_result apex_plugin.t_dynamic_action_render_result;',
'begin',
'    l_result.javascript_function := ''function(){Materialize.toast('' ',
'        || ''"'' || p_dynamic_action.attribute_01 || ''",''',
'        || p_dynamic_action.attribute_02 || '',''',
'        || ''"'' || p_dynamic_action.attribute_03 || ''",''',
'        || ''function(){'' || p_dynamic_action.attribute_04 || ''});}'';',
'    ',
'    return l_result;        ',
'end render;'))
,p_render_function=>'render'
,p_standard_attributes=>'ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(19332315173529614447)
,p_plugin_id=>wwv_flow_api.id(19331527656187384966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Message'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(19332358275918455777)
,p_plugin_id=>wwv_flow_api.id(19331527656187384966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Display Length'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'4000'
,p_unit=>'milliseconds'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_examples=>'4000'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(19332361273564461223)
,p_plugin_id=>wwv_flow_api.id(19331527656187384966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_examples=>'rounded'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(19332353362847631810)
,p_plugin_id=>wwv_flow_api.id(19331527656187384966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Callback'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_examples=>'function(){alert(''Your toast was dismissed'')}'
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
