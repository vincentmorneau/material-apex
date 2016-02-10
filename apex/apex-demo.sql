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
prompt --application/set_environment
 
prompt APPLICATION 59075 - Material APEX Dev
--
-- Application Export:
--   Application:     59075
--   Name:            Material APEX Dev
--   Date and Time:   17:07 Wednesday February 10, 2016
--   Exported By:     VINCENT.MORNEAU@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     42
--     Items:                   83
--     Validations:              5
--     Processes:                8
--     Regions:                270
--     Buttons:                 59
--     Dynamic Actions:         16
--   Shared Components:
--     Logic:
--       Items:                  1
--       Processes:              2
--       Build Options:          1
--     Navigation:
--       Lists:                  5
--       Breadcrumbs:            2
--         Entries:              3
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 3
--         Region:              11
--         Label:                4
--         List:                 4
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               2
--         Report:              12
--       LOVs:                   2
--       Shortcuts:              1
--       Plug-ins:               3
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,59075)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX_VMORNEAU')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Material APEX Dev')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'59075')
,p_application_group=>1966579928420657224
,p_application_group_name=>'Theme Work'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'75003975E8A85C15E91F1E552A483D21BFA25A911A31F7B71BBCFCBC4A493803'
,p_checksum_salt_last_reset=>'20150512160827'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(9085956626422111786)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Material APEX'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'0.9.1'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_default_error_display_loc=>'INLINE_IN_NOTIFICATION'
,p_substitution_string_01=>'PATH'
,p_substitution_value_01=>'&G_APP_IMAGES.'
,p_substitution_string_02=>'APP_FAVICONS'
,p_substitution_value_02=>'<link rel="icon" sizes="64x64" href="&PATH.img/favicon.png">'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160210163821'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>1438
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(4176389807623949556)
,p_name=>'Tabs'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4176390077764949556)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Tab 1'
,p_list_item_link_target=>'#tab1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4176390442280949557)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Tab 2'
,p_list_item_link_target=>'#tab2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4176390854591949558)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Tab 3'
,p_list_item_link_target=>'#tab3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4176391219418949558)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Tab 4'
,p_list_item_link_target=>'#tab4'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(9086527455150599004)
,p_name=>'SideNav'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086527628353599009)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'About'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'<i class="material-icons">info_outline</i>'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086527937302599012)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'CSS'
,p_list_text_01=>'<i class="material-icons">view_quilt</i>'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,11,12,13,14,15,16,17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086824555214917284)
,p_list_item_display_sequence=>10.5
,p_list_item_link_text=>'Colors'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.'
,p_parent_list_item_id=>wwv_flow_api.id(9086527937302599012)
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086824844815917287)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Grid'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086527937302599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086825157310917287)
,p_list_item_display_sequence=>12
,p_list_item_link_text=>'Helpers'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086527937302599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086825456012917287)
,p_list_item_display_sequence=>13
,p_list_item_link_text=>'Media'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086527937302599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086825738976917288)
,p_list_item_display_sequence=>14
,p_list_item_link_text=>'Sass'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086527937302599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086826034709917288)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Shadow'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086527937302599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086826327869917290)
,p_list_item_display_sequence=>16
,p_list_item_link_text=>'Table'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086527937302599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086826640854917290)
,p_list_item_display_sequence=>17
,p_list_item_link_text=>'Typography'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086527937302599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Components'
,p_list_text_01=>'<i class="material-icons">wallet_travel</i>'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,21,22,23,24,25,26,27,28,29,18,42'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086826934392947385)
,p_list_item_display_sequence=>20.5
,p_list_item_link_text=>'Badges'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19142616072968132398)
,p_list_item_display_sequence=>20.6
,p_list_item_link_text=>'Breadcrumbs'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086693650728357190)
,p_list_item_display_sequence=>21
,p_list_item_link_text=>'Buttons'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086827148716947385)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>'Cards'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13184739451217338318)
,p_list_item_display_sequence=>22.5
,p_list_item_link_text=>'Chips'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086827435326947387)
,p_list_item_display_sequence=>23
,p_list_item_link_text=>'Collections'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086827757481947387)
,p_list_item_display_sequence=>24
,p_list_item_link_text=>'Footer'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086828039340947387)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Forms'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086828345603947388)
,p_list_item_display_sequence=>26
,p_list_item_link_text=>'Icons'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086828630518947388)
,p_list_item_display_sequence=>27
,p_list_item_link_text=>'Navbar'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4571812399854624375)
,p_list_item_display_sequence=>28
,p_list_item_link_text=>'Pagination'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086828948294947388)
,p_list_item_display_sequence=>29
,p_list_item_link_text=>'Preloader'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528232060599012)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'JavaScript'
,p_list_text_01=>'<i class="material-icons">settings_ethernet</i>'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30,31,32,33,34,35,36,37,38,39,40,43,44'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086829956823971827)
,p_list_item_display_sequence=>30.5
,p_list_item_link_text=>'Collapsible'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086830235666971827)
,p_list_item_display_sequence=>31
,p_list_item_link_text=>'Dialogs'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086830539920971827)
,p_list_item_display_sequence=>32
,p_list_item_link_text=>'Dropdown'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086830848003971828)
,p_list_item_display_sequence=>33
,p_list_item_link_text=>'Media'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086831143167971828)
,p_list_item_display_sequence=>34
,p_list_item_link_text=>'Modals'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086831441609971830)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Parallax'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086831737627971830)
,p_list_item_display_sequence=>36
,p_list_item_link_text=>'Pushpin'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19324300994207461408)
,p_list_item_display_sequence=>36.5
,p_list_item_link_text=>'ScrollFire'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086832052959971831)
,p_list_item_display_sequence=>37
,p_list_item_link_text=>'Scrollspy'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086832342627971832)
,p_list_item_display_sequence=>38
,p_list_item_link_text=>'SideNav'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086832647502971832)
,p_list_item_display_sequence=>39
,p_list_item_link_text=>'Tabs'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19281554752233444486)
,p_list_item_display_sequence=>39.5
,p_list_item_link_text=>'Transitions'
,p_list_item_link_target=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086832929934971832)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Waves'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(9086528528600599013)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9086528839921599013)
,p_list_item_display_sequence=>41
,p_list_item_link_text=>'Mobile'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'<i class="material-icons">smartphone</i>'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4652528564603115518)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'APEX'
,p_list_text_01=>'<i class="material-icons">edit</i>'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'61,62,63'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4652528871664115519)
,p_list_item_display_sequence=>61
,p_list_item_link_text=>'Tabular Forms'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(4652528564603115518)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5231050817621587932)
,p_list_item_display_sequence=>62
,p_list_item_link_text=>'Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(4652528564603115518)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(9086579153487694715)
,p_name=>'Scrollspy'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT 	null',
'		,apr.region_name',
'        ,''#'' || nvl(apr.static_id, ''R'' || apr.region_id) r',
'FROM 	apex_application_page_regions apr ',
'JOIN 	apex_appl_template_options ato',
'	ON 	ato.region_template_id	= apr.template_id',
'WHERE 	apr.application_id 		= :APP_ID',
'AND 	apr.page_id 			= :APP_PAGE_ID',
'AND		ato.name 				= ''SCROLLSPY''',
'AND	apr.region_template_options like ''%:'' || ato.css_classes || '':%''',
'ORDER BY apr.display_sequence'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(9087125438999588060)
,p_name=>'Navbar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9087125641959588061)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Search'
,p_list_item_link_target=>'#'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_list_item_disp_condition=>'101'
,p_list_text_01=>'<i class="material-icons right-l">search</i>'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9087125927089588064)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'#'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_list_item_disp_condition=>'101'
,p_list_text_01=>'<i class="material-icons right-l">settings</i>'
,p_list_text_02=>'settings'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13065507872959220573)
,p_list_item_display_sequence=>21
,p_list_item_link_text=>'Setting 1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_api.id(9087125927089588064)
,p_list_text_02=>'settings'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13065568102531220575)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>'Setting 2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_api.id(9087125927089588064)
,p_list_text_02=>'settings'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13065568529735220575)
,p_list_item_display_sequence=>23
,p_list_item_link_text=>'Setting 3'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_api.id(9087125927089588064)
,p_list_text_02=>'settings'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9087126255743588064)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Logout'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_list_item_disp_condition=>'101'
,p_list_text_01=>'<i class="material-icons right-l">exit_to_app</i>'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(9776823328465977796)
,p_name=>'Emp'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT 1',
'           , ename label',
'           , ''#'' target',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_list_status=>'PUBLIC'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8925857666402748928)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8925857738982748928)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(9085945531852111756)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(21347836447820513517)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_app_images_dev'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    l_cookie owa_cookie.cookie;',
'begin',
'    l_cookie := owa_cookie.get(''oos-apex-frontend-boost-app-images'');',
'    if l_cookie.vals.count > 0 then',
'        :G_APP_IMAGES := l_cookie.vals(1);',
'    else',
'        :G_APP_IMAGES := :APP_IMAGES;',
'    end if;',
'end;'))
,p_required_patch=>wwv_flow_api.id(18522660686601587220)
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(23477797341048244578)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_app_images_prod'
,p_process_sql_clob=>':G_APP_IMAGES := :APP_IMAGES;'
,p_process_when=>'G_APP_IMAGES'
,p_process_when_type=>'ITEM_IS_NULL'
,p_required_patch=>-wwv_flow_api.id(18522660686601587220)
);
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(21347838591082676374)
,p_name=>'G_APP_IMAGES'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4657833566396268381)
,p_lov_name=>'DEPT'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DNAME as display_value, DEPTNO as return_value ',
'  from DEPT',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(9087158456892135339)
,p_lov_name=>'EXAMPLE_LOV'
,p_lov_query=>'.'||wwv_flow_api.id(9087158456892135339)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9087158638697135346)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Option 1'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9087158939910135347)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Option 2'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9087159257847135347)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Option 3'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24695601481160974621)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Option 4'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24695601799187974623)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Option 5'
,p_lov_return_value=>'5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24695602149063974623)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'Option 6'
,p_lov_return_value=>'6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24695602552812974623)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'Option 7'
,p_lov_return_value=>'7'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24695602998102974624)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'Option 8'
,p_lov_return_value=>'8'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(19325199628222736389)
,p_group_name=>'APEX'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(9086811349776676666)
,p_group_name=>'About'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(9086810736270672784)
,p_group_name=>'CSS'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(9086810943196674788)
,p_group_name=>'Components'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(9086810839040673564)
,p_group_name=>'JavaScript'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(9086810631075671227)
,p_group_name=>'Login'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(9086811452546677430)
,p_group_name=>'Mobile'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(9085957740483111791)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumbs
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(19143134059369165622)
,p_name=>'Breadcrumbs'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19144545857536430987)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19144645816100445356)
,p_parent_id=>wwv_flow_api.id(19144675441992277249)
,p_short_name=>'Breadcrumbs'
,p_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19144675441992277249)
,p_parent_id=>wwv_flow_api.id(19144545857536430987)
,p_short_name=>'Components'
,p_page_id=>50
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8428157000573412650)
,p_theme_id=>101
,p_name=>'Page - Modal'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<head>',
'    <title>#TITLE#</title>',
'    ',
'    <!-- Meta -->',
'    <meta charset="utf-8">',
'    <meta name="author" content="Vincent Morneau">',
'    <meta name="description" content="Material Design Theme for APEX">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">',
'    ',
'    <!-- Mandatory APEX CSS Stuff -->',
'    #HEAD#',
'    #APEX_CSS#',
'    ',
'    <!-- Material APEX CSS -->',
'    #THEME_CSS#',
'    #THEME_STYLE_CSS#',
'    #TEMPLATE_CSS#',
'    ',
'    <!-- Additionnal CSS -->',
'    #APPLICATION_CSS#',
'    #PAGE_CSS#',
'</head>',
'<body class="body-modal #PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'',
'<div class="modal #PAGE_CSS_CLASSES#">',
'    <div class="modal-content">',
'        #GLOBAL_NOTIFICATION#',
'        #SUCCESS_MESSAGE#',
'        #NOTIFICATION_MESSAGE#',
'        ',
'        <div class="row">',
'            <div class="&P0_BODY_COLUMN_CLASSES.">',
'                #BODY#',
'            </div>',
'            <!-- Scrollspy -->',
'            #REGION_POSITION_04#     ',
'        </div>',
'    </div>',
'    <div class="modal-footer">',
'        #REGION_POSITION_07#',
'    </div>',
'</div>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS Stuff -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Material APEX JS -->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'    ',
'<!-- Additionnal CSS -->',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated stuff -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    <div class="col s12">',
'        <div class="card-panel green lighten-2 white-text">#SUCCESS_MESSAGE#</div>               ',
'    </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    <div class="col s12">',
'        <div class="card-panel red lighten-2 white-text">#MESSAGE#</div>               ',
'    </div>',
'</div>'))
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col s12 m#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'    #CONTENT#',
'</div>'))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'70%'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8459514147764036756)
,p_page_template_id=>wwv_flow_api.id(8428157000573412650)
,p_name=>'Modal Footer'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8691337083512075226)
,p_page_template_id=>wwv_flow_api.id(8428157000573412650)
,p_name=>'Scrollspy'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8691479978159259560)
,p_page_template_id=>wwv_flow_api.id(8428157000573412650)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9361814551162715062)
,p_theme_id=>101
,p_name=>'Page - Standard'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<head>',
'    <title>#TITLE#</title>',
'    #FAVICONS#',
'    ',
'    <!-- Meta -->',
'    <meta charset="utf-8">',
'    <meta name="author" content="Vincent Morneau">',
'    <meta name="description" content="Material Design Theme for APEX">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">',
'    ',
'    <!-- Mandatory APEX CSS Stuff -->',
'    #HEAD#',
'    #APEX_CSS#',
'    ',
'    <!-- Material APEX CSS -->',
'    #THEME_CSS#',
'    #THEME_STYLE_CSS#',
'    #TEMPLATE_CSS#',
'    ',
'    <!-- Additionnal CSS -->',
'    #APPLICATION_CSS#',
'    #PAGE_CSS#',
'    ',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01# ',
'',
'<!-- Navbar & Sidenav -->',
'<header>',
'    <div class="top-nav-wrapper">',
'        <nav class="top-nav">',
'            <div class="nav-wrapper">',
'                #REGION_POSITION_02#',
'                <a href="&HOME_URL." class="brand-logo hide-on-small-only">#LOGO#</a>',
'                #NAVIGATION_BAR#',
'            </div>',
'        </nav>',
'    </div>',
'    <!-- Breadcrumbs -->',
'    #REGION_POSITION_03#',
'    #SIDE_GLOBAL_NAVIGATION_LIST#',
'</header>',
'',
'',
'<!-- Content -->',
'<main>',
'    <!-- Notifications -->',
'    #GLOBAL_NOTIFICATION#',
'    #SUCCESS_MESSAGE#',
'    #NOTIFICATION_MESSAGE#',
'',
'    <div class="row">',
'        <div class="&P0_BODY_COLUMN_CLASSES.">',
'            #BODY#',
'        </div>',
'        ',
'        <!-- Scrollspy -->',
'        #REGION_POSITION_04#     ',
'    </div>',
'',
'    <!-- Modals -->',
'    #REGION_POSITION_06#',
'    ',
'</main>',
'',
'<!-- Footer -->',
'<footer class="page-footer">',
'    #REGION_POSITION_08#',
'</footer>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS Stuff -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Material APEX JS -->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'    ',
'<!-- Additionnal CSS -->',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated stuff -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    <div class="col s12">',
'        <div class="card-panel green lighten-2 white-text">#SUCCESS_MESSAGE#</div>               ',
'    </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    <div class="col s12">',
'        <div class="card-panel red lighten-2 white-text">#MESSAGE#</div>               ',
'    </div>',
'</div>'))
,p_theme_class_id=>8
,p_default_template_options=>'page-center-logo:main-container:page-navbar-fixed'
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col s12 m#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'    #CONTENT#',
'</div>'))
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(4170740097042940221)
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_name=>'Modals'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8534400920150326801)
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8534402432023326806)
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_name=>'Scrollspy'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8534402947700326806)
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(8772057226607818296)
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_name=>'Hamburger Menu'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(19144733837390457526)
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_name=>'Breadcrumbs'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11293535835719327359)
,p_theme_id=>101
,p_name=>'Page - Clean'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<head>',
'    <title>#TITLE#</title>',
'    ',
'    <!-- Meta -->',
'    <meta charset="utf-8">',
'    <meta name="author" content="Vincent Morneau">',
'    <meta name="description" content="Material Design Theme for APEX">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">',
'    ',
'    <!-- Mandatory APEX CSS Stuff -->',
'    #HEAD#',
'    #APEX_CSS#',
'    ',
'    <!-- Material APEX CSS -->',
'    #THEME_CSS#',
'    #THEME_STYLE_CSS#',
'    #TEMPLATE_CSS#',
'    ',
'    <!-- Additionnal CSS -->',
'    #APPLICATION_CSS#',
'    #PAGE_CSS#',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'',
'#GLOBAL_NOTIFICATION#',
'#SUCCESS_MESSAGE#',
'#NOTIFICATION_MESSAGE#',
'',
'#BODY#',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS Stuff -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Material APEX JS -->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'    ',
'<!-- Additionnal CSS -->',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated stuff -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    <div class="col s12">',
'        <div class="card-panel green lighten-2 white-text">#SUCCESS_MESSAGE#</div>               ',
'    </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    <div class="col s12">',
'        <div class="card-panel red lighten-2 white-text">#MESSAGE#</div>               ',
'    </div>',
'</div>'))
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col s12 m#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'    #CONTENT#',
'</div>'))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11293536274937327368)
,p_page_template_id=>wwv_flow_api.id(11293535835719327359)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(8931890664199879548)
,p_template_name=>'Button - Standard'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#><i class="material-icons">#ICON_CSS_CLASSES#</i>#LABEL#</a>',
''))
,p_theme_class_id=>6
,p_preset_template_options=>'icon-float-left:btn:wave-none'
,p_theme_id=>101
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(19176696603223351381)
,p_template_name=>'Button - Fixed Action Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" id="#BUTTON_ID#" class="fixed-action-btn btn-floating btn-large #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#><i class="material-icons">#ICON_CSS_CLASSES#</i>#LABEL#</a>',
''))
,p_theme_class_id=>6
,p_preset_template_options=>'fab-right'
,p_theme_id=>101
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4109517354323428135)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="video-container #REGION_CSS_CLASSES#">',
'    #BODY#',
'</div>'))
,p_page_plug_template_name=>'Region - Video Responsive'
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(4170487165352055150)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="region modal #REGION_CSS_CLASSES#">',
'    <div class="modal-content">',
'        <h4 class="modal-title">#TITLE#</h4>',
'        #BODY#',
'    </div>',
'    <div class="modal-footer">',
'        <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>',
'    </div>',
'</div>'))
,p_page_plug_template_name=>'Region - Modal'
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8137249185487745518)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre class="#REGION_CSS_CLASSES#"><code class="#REGION_CSS_CLASSES#">',
'#BODY#',
'</code></pre>'))
,p_page_plug_template_name=>'Region - Code'
,p_theme_id=>101
,p_theme_class_id=>21
,p_preset_template_options=>'language-markup'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8215665968451126746)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="progress #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'      <div class="indeterminate"></div>',
'</div>'))
,p_page_plug_template_name=>'Region - Preloader Linear'
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8215732480435136349)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="preloader-wrapper big active #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  <div class="spinner-layer spinner-blue">',
'    <div class="circle-clipper left">',
'      <div class="circle"></div>',
'    </div><div class="gap-patch">',
'      <div class="circle"></div>',
'    </div><div class="circle-clipper right">',
'      <div class="circle"></div>',
'    </div>',
'  </div>',
'',
'  <div class="spinner-layer spinner-red">',
'    <div class="circle-clipper left">',
'      <div class="circle"></div>',
'    </div><div class="gap-patch">',
'      <div class="circle"></div>',
'    </div><div class="circle-clipper right">',
'      <div class="circle"></div>',
'    </div>',
'  </div>',
'',
'  <div class="spinner-layer spinner-yellow">',
'    <div class="circle-clipper left">',
'      <div class="circle"></div>',
'    </div><div class="gap-patch">',
'      <div class="circle"></div>',
'    </div><div class="circle-clipper right">',
'      <div class="circle"></div>',
'    </div>',
'  </div>',
'',
'  <div class="spinner-layer spinner-green">',
'    <div class="circle-clipper left">',
'      <div class="circle"></div>',
'    </div><div class="gap-patch">',
'      <div class="circle"></div>',
'    </div><div class="circle-clipper right">',
'      <div class="circle"></div>',
'    </div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Region - Preloader Circular'
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(8216073412913288398)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<blockquote>',
'    #BODY#',
'</blockquote>'))
,p_page_plug_template_name=>'Region - Blockquote'
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9087137255068027958)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="card-panel #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    #BODY#',
'</div>'))
,p_page_plug_template_name=>'Region - Card Panel'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>101
,p_theme_class_id=>21
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9090651233536497525)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="parallax-container">',
'    <div class="parallax">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region - Parallax'
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9362893649341773011)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="section clearfix #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <p class="header">#TITLE#</p>',
'    <div class="section-buttons">#CREATE#</div>',
'    #BODY#',
'    <div class="section-buttons">#CREATE2#</div>',
'</div>'))
,p_page_plug_template_name=>'Region - Section'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>101
,p_theme_class_id=>21
,p_preset_template_options=>'left-align:h2:buttons-left'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9635259506914266756)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="center promo #REGION_CSS_CLASSES#">',
'    <i class="material-icons">#ICON_CSS_CLASSES#</i>',
'    <p class="promo-caption">#TITLE#</p>',
'    <p class="light center">#BODY#</p>',
'</div>'))
,p_page_plug_template_name=>'Region - Promo'
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9650117990381704503)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="container">',
'        <div class="row">',
'            <div class="col m6 s12">',
'                <h5 class="white-text">Footer Content</h5>',
'                <p class="white-text">You can use rows and columns here to organize your footer content.</p>',
'            </div>',
'            <div class="col m4 offset-m2 s12">',
'                <h5 class="white-text">Where to find me?</h5>',
'                <ul>',
'                    <li><a class="white-text" href="http://vmorneau.me/"><i class="fa fa-rss padding-right-15"></i>My Blog</a></li>',
'                    <li><a class="white-text" href="https://github.com/vincentmorneau"><i class="fa fa-github-square padding-right-15"></i>Github</a></li>',
'                    <li><a class="white-text" href="https://twitter.com/vincentmorneau"><i class="fa fa-twitter padding-right-15"></i>Twitter</a></li>',
'                    <li><a class="white-text" href="https://ca.linkedin.com/pub/vincent-morneau/7b/722/49b"><i class="fa fa-linkedin padding-right-15"></i>Linkedin</a></li>',
'                    <li><a class="white-text" href="https://www.facebook.com/vincent.morneau"><i class="fa fa-facebook padding-right-15"></i>Facebook</a></li>',
'                </ul>',
'            </div>',
'        </div>',
'    </div>',
'    <div class="footer-copyright">',
'        <div class="container">',
'            © 2015 Vincent Morneau',
'            <a class="grey-text text-lighten-4 right" href="#!">MIT License</a>',
'        </div>',
'    </div>',
'</div>'))
,p_page_plug_template_name=>'Region - Footer'
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(4176182270720072399)
,p_list_template_current=>'<li class="tab"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="tab"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'List - Tabs'
,p_theme_id=>101
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul class="tabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Column CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9086526438265569983)
,p_list_template_current=>'<li class="active"><a href="#LINK#" class="truncate">#A01##TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" class="truncate">#A01##TEXT#</a></li>'
,p_list_template_name=>'List - SideNav'
,p_theme_id=>101
,p_theme_class_id=>9
,p_preset_template_options=>'left'
,p_list_template_before_rows=>' <ul id="app-sidenav" class="side-nav" data-direction="#COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="collapsible-body">',
'    <ul>        '))
,p_after_sub_list=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
,p_sub_list_item_current=>'<li class="active"><a href="#LINK#" class="truncate">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="truncate">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="no-padding">',
'  <ul class="collapsible collapsible-accordion">',
'    <li>',
'      <a class="collapsible-header active truncate waves-effect">#A01##TEXT#</a>      ',
'    </li>',
'  </ul>',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="no-padding">',
'  <ul class="collapsible collapsible-accordion">',
'    <li>',
'      <a class="collapsible-header truncate waves-effect">#A01##TEXT#</a>      ',
'    </li>',
'  </ul>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="no-padding">',
'  <ul class="collapsible collapsible-accordion">',
'    <li>',
'      <a class="collapsible-header active truncate waves-effect">#A01##TEXT#</a>      ',
'    </li>',
'  </ul>',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="no-padding">',
'  <ul class="collapsible collapsible-accordion">',
'    <li>',
'      <a class="collapsible-header truncate waves-effect">#A01##TEXT#</a>      ',
'    </li>',
'  </ul>',
'</li>'))
,p_a01_label=>'Icon Tag'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9087126745232589871)
,p_list_template_current=>'<li><a href="#LINK#">#A01#<span class="hide-on-med-and-down">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#A01#<span class="hide-on-med-and-down">#TEXT#</span></a></li>'
,p_list_template_name=>'List - Navbar'
,p_theme_id=>101
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul class="right navbar-list">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul id="#A02#" class="dropdown-content">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a class="dropdown-button" href="#LINK#" data-activates="#A02#"><span class="hide-on-med-and-down">#TEXT#</span><i class="mdi-navigation-arrow-drop-down right-l"></i></a></li>'
,p_item_templ_noncurr_w_child=>'<li><a class="dropdown-button" href="#LINK#" data-activates="#A02#"><span class="hide-on-med-and-down">#TEXT#</span><i class="mdi-navigation-arrow-drop-down right-l"></i></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9408225381176077889)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'List - Scrollspy'
,p_theme_id=>101
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col hide-on-small-only m3 l2">    ',
'<ul class="section table-of-contents">'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7656016396896178679)
,p_row_template_name=>'Report - Slider'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'    #IMG#',
'    <div class="caption">',
'        <h3>#TITLE#</h3>',
'        <h5>#DESCRIPTION#</h5>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<div class="slider"><ul class="slides">'
,p_row_template_after_rows=>'</ul></div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>101
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(8062881798324256540)
,p_row_template_name=>'Report - Collapsible'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'    <div class="collapsible-header"><i class="material-icons">#ICON_CSS_CLASSES#</i>#TITLE#</div>',
'    <div class="collapsible-body"><p>#DESCRIPTION#</p></div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="collapsible #COMPONENT_CSS_CLASSES#" data-collapsible="">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>101
,p_theme_class_id=>7
,p_preset_template_options=>'accordion'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(8137824445990040459)
,p_row_template_name=>'Report - Dropdown Content'
,p_row_template1=>'<li><a href="#TARGET#">#DISPLAY#<span class="new badge">#BADGE#</span></a></li>'
,p_row_template_condition1=>':NEW_BADGE is not null'
,p_row_template2=>'<li><a href="#TARGET#">#DISPLAY#<span class="badge">#BADGE#</span></a></li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a class="btn dropdown-button" href="#!" data-activates="#REGION_STATIC_ID#_REPORT"><i class="material-icons right">arrow_drop_down</i></a>',
'<ul id="#REGION_STATIC_ID#_REPORT" class="dropdown-content #COMPONENT_CSS_CLASSES#">'))
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_before_column_heading=>'<li class="collection-header">'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>101
,p_theme_class_id=>7
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9090634527809844626)
,p_row_template_name=>'Report - Standard'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#" data-label="#COLUMN_HEADER#" #ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>'<table id="report_#REGION_STATIC_ID#" class="#COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'<tfoot class="right">',
'    <div>#EXTERNAL_LINK##CSV_LINK#</div>',
'    <div class="report-pagination">#PAGINATION#</div>',
'</tfoot>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
'<tr>'))
,p_column_heading_template=>'<th data-field="#COLUMN_HEADER_NAME#" #ALIGNMENT# #COLUMN_WIDTH# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="instructiontext">#TEXT#</span>'
,p_next_page_template=>'<a href="#LINK#"><i class="material-icons">navigate_next</i></a>'
,p_previous_page_template=>'<a href="#LINK#"><i class="material-icons">navigate_before</i></a>'
,p_next_set_template=>'<a href="#LINK#"><i class="material-icons">skip_next</i></a>'
,p_previous_set_template=>'<a href="#LINK#"><i class="material-icons">skip_previous</i></a>'
,p_theme_id=>101
,p_theme_class_id=>7
,p_default_template_options=>'borderless'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(9090634527809844626)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9645169463850955836)
,p_row_template_name=>'Report - Card Basic'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#COLUMN_CSS_CLASSES#">',
'    <div class="card">',
'        <div class="card-content">',
'            <p class="card-title black-text">#TITLE#</p>',
'            #CONTENT#',
'        </div>',
'        <div class="card-action">',
'            <p>',
'                <a href="#BTN_LINK_1#">#BTN_LABEL_1#</a>',
'                <a href="#BTN_LINK_2#">#BTN_LABEL_2#</a>',
'            </p>',
'        </div>',
'    </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="row">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>101
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9652079909139010806)
,p_row_template_name=>'Report - Collection Basic'
,p_row_template1=>'<li class="collection-item">#DISPLAY#<span class="new badge">#BADGE#</span></li>'
,p_row_template_condition1=>':NEW_BADGE is not null'
,p_row_template2=>'<li class="collection-item">#DISPLAY#<span class="badge">#BADGE#</span></li>'
,p_row_template_before_rows=>'<ul class="collection #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_before_column_heading=>'<li class="collection-header">'
,p_column_heading_template=>'<h4>#COLUMN_HEADER#</h4>'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>101
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9652104318611059757)
,p_row_template_name=>'Report - Collection Links'
,p_row_template1=>'<li class="collection-item"><a href="#TARGET#">#DISPLAY#<span class="new badge">#BADGE#</span></a></li>'
,p_row_template_condition1=>':NEW_BADGE is not null'
,p_row_template2=>'<li class="collection-item"><a href="#TARGET#">#DISPLAY#<span class="badge">#BADGE#</span></a></li>'
,p_row_template_before_rows=>'<ul class="collection #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_before_column_heading=>'<li class="collection-header">'
,p_column_heading_template=>'<h4>#COLUMN_HEADER#</h4>'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>101
,p_theme_class_id=>7
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9652148565941067451)
,p_row_template_name=>'Report - Collection Secondary Content'
,p_row_template1=>'<li class="collection-item"><div>#DISPLAY#<a href="#TARGET#" class="secondary-content #BUTTON_CSS_CLASSES#"><i class="material-icons">#ICON_CSS_CLASSES#</i></a></div></li>'
,p_row_template_before_rows=>'<ul class="collection #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_before_column_heading=>'<li class="collection-header">'
,p_column_heading_template=>'<h4>#COLUMN_HEADER#</h4>'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>101
,p_theme_class_id=>7
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9678357812882836094)
,p_row_template_name=>'Report - Card Image'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#COLUMN_CSS_CLASSES#">    ',
'    <div class="card">',
'        <div class="card-image">',
'            #IMG#',
'            <span class="card-title">#TITLE#</span>',
'        </div>',
'        <div class="card-content">',
'            #CONTENT#',
'        </div>',
'        <div class="card-action">',
'            <p>',
'                <a href="#BTN_LINK_1#">#BTN_LABEL_1#</a>',
'                <a href="#BTN_LINK_2#">#BTN_LABEL_2#</a>',
'            </p>',
'        </div>',
'    </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="row">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>101
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9678358023662838215)
,p_row_template_name=>'Report - Card Reveal'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <div class="#COLUMN_CSS_CLASSES#">',
'        <div class="card">',
'            <div class="card-image activator waves-effect waves-block waves-light">',
'                #IMG#',
'            </div>',
'            <div class="card-content">',
'              <span class="card-title activator grey-text text-darken-4">#TITLE# <i class="material-icons right">more_vert</i></span>',
'            </div>',
'            <div class="card-action">',
'                <p>',
'                    <a href="#BTN_LINK_1#">#BTN_LABEL_1#</a>',
'                    <a href="#BTN_LINK_2#">#BTN_LABEL_2#</a>',
'                </p>',
'            </div>',
'            <div class="card-reveal">',
'              <span class="card-title grey-text text-darken-4">#TITLE# <i class="material-icons right">close</i></span>',
'              #CONTENT#',
'            </div>',
'        </div>',
'    </div>'))
,p_row_template_before_rows=>'<div class="row">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>101
,p_theme_class_id=>7
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(13184883243820533730)
,p_row_template_name=>'Report - Chips'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="chip">',
'    #IMAGE#',
'    #TEXT#',
'    <i class="material-icons">close</i>',
'</div>'))
,p_row_template_condition1=>':IND_CLOSABLE is not null AND :IMAGE is not null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="chip">',
'    #IMAGE#',
'    #TEXT#',
'</div>'))
,p_row_template_condition2=>':IMAGE is not null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="chip">',
'    #TEXT#',
'    <i class="material-icons">close</i>',
'</div>'))
,p_row_template_condition3=>':IND_CLOSABLE is not null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="chip">',
'    #TEXT#',
'</div>'))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>101
,p_theme_class_id=>7
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(19280366119529328214)
,p_row_template_name=>'Report - Staggered List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'    <h4><a href="#LINK#">#TITLE#</a></h4>',
'    <p>#DESCRIPTION#</p>',
'</li>'))
,p_row_template_before_rows=>' <ul id="#REGION_STATIC_ID#_report" class="staggered-list">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>101
,p_theme_class_id=>7
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(8747212002608116649)
,p_template_name=>'Item - File Input'
,p_template_body1=>'<span>'
,p_template_body2=>'</span>'
,p_before_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#CURRENT_ITEM_NAME#_CONTAINER" class="file-field input-field #ITEM_CSS_CLASSES#">',
'<div class="btn">'))
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<div class="file-path-wrapper">',
'    <input class="file-path validate" type="text">',
'</div>',
'</div>'))
,p_theme_id=>101
,p_theme_class_id=>5
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9361856552060152525)
,p_template_name=>'Item - Standard'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" data-tooltip="#CURRENT_ITEM_HELP_TEXT#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_NAME#_CONTAINER" class="input-field #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_theme_id=>101
,p_theme_class_id=>5
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9760004795692810490)
,p_template_name=>'Item - Materialbox'
,p_template_body1=>'<label class="big-label">'
,p_template_body2=>'</label>'
,p_before_element=>'<div data-caption="#CURRENT_ITEM_HELP_TEXT# ">'
,p_after_element=>'</div>'
,p_theme_id=>101
,p_theme_class_id=>5
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(19287996820552801147)
,p_template_name=>'Item - Image'
,p_template_body1=>'<label class="hide">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_NAME#_CONTAINER" class="#ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_theme_id=>101
,p_theme_class_id=>5
,p_default_template_options=>'item-image-responsive'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(5810619060668674579)
,p_name=>'Breadcrumb'
,p_before_first=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<nav class="nav-breadcrumbs">',
'    <div class="nav-wrapper row">',
'        <div class="col s12">'))
,p_current_page_option=>'<a href="#LINK#" class="breadcrumb">#NAME#</a>'
,p_non_current_page_option=>'<a href="#LINK#" class="breadcrumb">#NAME#</a>'
,p_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'</div>',
'</nav>'))
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>101
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(9408226195277077891)
,p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title</title>',
'#APEX_CSS#',
'#APEX_JAVASCRIPT#',
'<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge" /><![endif]-->',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#" type="text/css" media="all"/>',
'#THEME_CSS#',
'</head>'))
,p_page_body_attr=>'class="uPopUpLOV"'
,p_before_field_text=>'<div class="uActionBar">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="smallButton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="smallButton hotButton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="smallButton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="smallButton"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="lovLinks">'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(2829587635444905048)
,p_cal_template_name=>'Calendar - Standard'
,p_day_of_week_format=>'<th>#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="">',
' <tr>',
'   <td align="center" style="font-weight:bold;">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="1" cellpadding="1" cellspacing="1" summary="0">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div>#DD#</div><br />'
,p_day_open_format=>'<td valign="top">'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" bgcolor="#d3d3d3">'
,p_weekend_title_format=>'<div>#DD#</div>'
,p_weekend_open_format=>'<td valign="top">'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div>#DD#</div>'
,p_nonday_open_format=>'<td valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_theme_id=>101
,p_theme_class_id=>4
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(9408226396554077894)
,p_theme_id=>101
,p_theme_name=>'Material Design'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(9361814551162715062)
,p_default_dialog_template=>wwv_flow_api.id(8428157000573412650)
,p_error_template=>wwv_flow_api.id(9361814551162715062)
,p_printer_friendly_template=>wwv_flow_api.id(9361814551162715062)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(9361814551162715062)
,p_default_button_template=>wwv_flow_api.id(8931890664199879548)
,p_default_region_template=>wwv_flow_api.id(9362893649341773011)
,p_default_chart_template=>wwv_flow_api.id(9362893649341773011)
,p_default_form_template=>wwv_flow_api.id(9362893649341773011)
,p_default_reportr_template=>wwv_flow_api.id(9362893649341773011)
,p_default_tabform_template=>wwv_flow_api.id(9362893649341773011)
,p_default_wizard_template=>wwv_flow_api.id(9362893649341773011)
,p_default_menur_template=>wwv_flow_api.id(9362893649341773011)
,p_default_listr_template=>wwv_flow_api.id(9362893649341773011)
,p_default_irr_template=>wwv_flow_api.id(9362893649341773011)
,p_default_report_template=>wwv_flow_api.id(9090634527809844626)
,p_default_label_template=>wwv_flow_api.id(9361856552060152525)
,p_default_menu_template=>wwv_flow_api.id(5810619060668674579)
,p_default_calendar_template=>wwv_flow_api.id(2829587635444905048)
,p_default_list_template=>wwv_flow_api.id(9087126745232589871)
,p_default_top_nav_list_temp=>wwv_flow_api.id(9086526438265569983)
,p_default_side_nav_list_temp=>wwv_flow_api.id(9086526438265569983)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(9362893649341773011)
,p_default_dialogr_template=>wwv_flow_api.id(9362893649341773011)
,p_default_option_label=>wwv_flow_api.id(9361856552060152525)
,p_default_header_template=>wwv_flow_api.id(9362893649341773011)
,p_default_footer_template=>wwv_flow_api.id(9362893649341773011)
,p_default_required_label=>wwv_flow_api.id(9361856552060152525)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(9087126745232589871)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(101),'')
,p_files_version=>33
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'&PATH.js/apex-init#MIN#.js',
'&PATH.lib/prism/js/prism.js',
'&PATH.lib/materialize/js/materialize#MIN#.js',
'&PATH.js/materialize-init#MIN#.js'))
,p_css_file_urls=>'&PATH.lib/prism/css/prism.css'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(8572121638151807564)
,p_theme_id=>101
,p_name=>'Default'
,p_css_file_urls=>'&PATH.css/app#MIN#.css'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#default.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_modal_bottom_sheet_height":"45%"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#8572121638151807564.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(13153432889411705647)
,p_theme_id=>101
,p_name=>'Default RTL'
,p_css_file_urls=>'&PATH.css/app.rtl#MIN#.css'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#default.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#13153432889411705647.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200A202A2044656661756C740A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290A202A200A202A2054686973204353532066696C65207761732067656E65726174656420757369';
wwv_flow_api.g_varchar2_table(2) := '6E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200A202A200A202A2F0A0A6E61762C0A2E75692D7769646765742C0A7464202E75692D73746174652D6163746976652C0A';
wwv_flow_api.g_varchar2_table(3) := '7464202E75692D73746174652D686F7665722C0A2E706167696E6174696F6E202E696E737472756374696F6E7465787420622C0A666F6F7465722E706167652D666F6F7465722C0A2E706167696E6174696F6E206C692E6163746976652C0A2E73696465';
wwv_flow_api.g_varchar2_table(4) := '2D6E6176202E636F6C6C61707369626C652D626F6479206C692E6163746976652C0A2E736964652D6E61762E6669786564202E636F6C6C61707369626C652D626F6479206C692E616374697665207B0A20206261636B67726F756E643A20233030626364';
wwv_flow_api.g_varchar2_table(5) := '343B0A20206261636B67726F756E642D636F6C6F723A20233030626364343B0A7D0A2E70726F6D6F2D6920692C0A2E70726F6D6F20692C0A2E6865616465722C0A692E70726F6D6F2C0A2E74616273202E7461622061207B0A2020636F6C6F723A202330';
wwv_flow_api.g_varchar2_table(6) := '30626364343B0A7D0A626C6F636B71756F7465207B0A2020626F726465722D6C6566743A2035707820736F6C696420233030626364343B0A7D0A0A2E636F6C6C656374696F6E202E636F6C6C656374696F6E2D6974656D2E6163746976652C0A7370616E';
wwv_flow_api.g_varchar2_table(7) := '2E62616467652E6E65772C0A2E70726F6772657373202E64657465726D696E6174652C0A2E70726F6772657373202E696E64657465726D696E6174652C0A2E62746E2C0A2E62746E2D6C617267652C0A2E612D4952522D746F6F6C626172202E612D4952';
wwv_flow_api.g_varchar2_table(8) := '522D636F6E74726F6C47726F75702E612D4952522D636F6E74726F6C47726F75702D2D73656172636820627574746F6E2C0A2E612D4952522D746F6F6C626172202E612D4952522D636F6E74726F6C47726F75702E612D4952522D636F6E74726F6C4772';
wwv_flow_api.g_varchar2_table(9) := '6F75702D2D6F7074696F6E7320627574746F6E2C0A2E612D4952522D746F6F6C626172202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D7265706F7274566965772C0A2E612D4952522D64657461696C2D726F772C0A2E612D4952';
wwv_flow_api.g_varchar2_table(10) := '522D706167696E6174696F6E2D6974656D3A66697273742D6368696C64202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E2C0A2E612D4952522D706167696E6174696F6E2D6974656D3A6C6173742D6368';
wwv_flow_api.g_varchar2_table(11) := '696C64202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E2C0A2E62746E2D666C6F6174696E672C0A2E612D4952522D746F6F6C626172202E612D4952522D636F6E74726F6C47726F75702E612D4952522D';
wwv_flow_api.g_varchar2_table(12) := '636F6E74726F6C47726F75702D2D766965777320627574746F6E2C0A5B747970653D22636865636B626F78225D2E66696C6C65642D696E3A636865636B6564202B206C6162656C3A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(13) := '236566353335303B0A7D0A2E636F6C6C656374696F6E20612E636F6C6C656374696F6E2D6974656D2C0A2E7365636F6E646172792D636F6E74656E742C0A2E64726F70646F776E2D636F6E74656E74206C69203E20612C0A2E64726F70646F776E2D636F';
wwv_flow_api.g_varchar2_table(14) := '6E74656E74206C69203E207370616E2C0A696E7075745B747970653D746578745D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D70617373776F72645D3A666F6375733A6E6F74285B726561';
wwv_flow_api.g_varchar2_table(15) := '646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D656D61696C5D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D75726C5D3A666F6375733A6E6F74285B726561646F6E6C';
wwv_flow_api.g_varchar2_table(16) := '795D29202B206C6162656C2C0A696E7075745B747970653D74696D655D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D646174655D3A666F6375733A6E6F74285B726561646F6E6C795D2920';
wwv_flow_api.g_varchar2_table(17) := '2B206C6162656C2C0A696E7075745B747970653D6461746574696D652D6C6F63616C5D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D74656C5D3A666F6375733A6E6F74285B726561646F6E';
wwv_flow_api.g_varchar2_table(18) := '6C795D29202B206C6162656C2C0A696E7075745B747970653D6E756D6265725D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D7365617263685D3A666F6375733A6E6F74285B726561646F6E';
wwv_flow_api.g_varchar2_table(19) := '6C795D29202B206C6162656C2C0A74657874617265612E6D6174657269616C697A652D74657874617265613A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A2E696E7075742D6669656C64202E7072656669782E61637469';
wwv_flow_api.g_varchar2_table(20) := '76652C0A5B747970653D22726164696F225D3A636865636B6564202B206C6162656C3A61667465722C0A5B747970653D22726164696F225D2E776974682D6761703A636865636B6564202B206C6162656C3A6166746572207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(21) := '6566353335303B0A7D0A696E7075745B747970653D746578745D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D70617373776F72645D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B';
wwv_flow_api.g_varchar2_table(22) := '747970653D656D61696C5D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D75726C5D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D74696D655D3A666F6375733A6E6F74';
wwv_flow_api.g_varchar2_table(23) := '285B726561646F6E6C795D292C0A696E7075745B747970653D646174655D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D6461746574696D652D6C6F63616C5D3A666F6375733A6E6F74285B726561646F6E6C79';
wwv_flow_api.g_varchar2_table(24) := '5D292C0A696E7075745B747970653D74656C5D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D6E756D6265725D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D73656172';
wwv_flow_api.g_varchar2_table(25) := '63685D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A74657874617265612E6D6174657269616C697A652D74657874617265613A666F6375733A6E6F74285B726561646F6E6C795D29207B0A2020626F726465722D626F74746F6D3A203170';
wwv_flow_api.g_varchar2_table(26) := '7820736F6C696420236566353335303B0A2020626F782D736861646F773A2030203170782030203020236566353335303B0A7D0A5B747970653D22726164696F225D3A636865636B6564202B206C6162656C3A61667465722C0A5B747970653D22726164';
wwv_flow_api.g_varchar2_table(27) := '696F225D2E776974682D6761703A636865636B6564202B206C6162656C3A6265666F72652C0A5B747970653D22726164696F225D2E776974682D6761703A636865636B6564202B206C6162656C3A61667465722C0A5B747970653D22636865636B626F78';
wwv_flow_api.g_varchar2_table(28) := '225D2E66696C6C65642D696E3A636865636B6564202B206C6162656C3A6166746572207B0A2020626F726465723A2032707820736F6C696420236566353335303B0A7D0A5B747970653D22636865636B626F78225D3A636865636B6564202B206C616265';
wwv_flow_api.g_varchar2_table(29) := '6C3A6265666F7265207B0A2020626F726465722D72696768743A2032707820736F6C696420236566353335303B0A2020626F726465722D626F74746F6D3A2032707820736F6C696420236566353335303B0A7D0A5B747970653D22636865636B626F7822';
wwv_flow_api.g_varchar2_table(30) := '5D3A696E64657465726D696E617465202B206C6162656C3A6265666F7265207B0A2020626F726465722D72696768743A2032707820736F6C696420236566353335303B0A7D0A2E62746E3A686F7665722C0A2E62746E2D6C617267653A686F7665722C0A';
wwv_flow_api.g_varchar2_table(31) := '2E612D4952522D746F6F6C626172202E612D4952522D636F6E74726F6C47726F75702E612D4952522D636F6E74726F6C47726F75702D2D73656172636820627574746F6E3A686F7665722C0A2E612D4952522D746F6F6C626172202E612D4952522D636F';
wwv_flow_api.g_varchar2_table(32) := '6E74726F6C47726F75702E612D4952522D636F6E74726F6C47726F75702D2D6F7074696F6E7320627574746F6E3A686F7665722C0A2E612D4952522D746F6F6C626172202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D7265706F';
wwv_flow_api.g_varchar2_table(33) := '7274566965773A686F7665722C0A2E612D4952522D64657461696C2D726F773A686F7665722C0A2E612D4952522D706167696E6174696F6E2D6974656D3A66697273742D6368696C64202E612D4952522D627574746F6E2E612D4952522D627574746F6E';
wwv_flow_api.g_varchar2_table(34) := '2D2D706167696E6174696F6E3A686F7665722C0A2E612D4952522D706167696E6174696F6E2D6974656D3A6C6173742D6368696C64202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F766572207B';
wwv_flow_api.g_varchar2_table(35) := '0A20206261636B67726F756E642D636F6C6F723A20236631366136373B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C652C0A2E6D6F64616C2E626F74746F6D2D7368656574202E6D6F64616C2D7469746C6520';
wwv_flow_api.g_varchar2_table(36) := '7B0A2020636F6C6F723A20233030626364343B0A7D0A0A2E6D6F64616C2E626F74746F6D2D73686565742C0A2E626F74746F6D2D73686565742E612D4952522D6469616C6F67207B0A20206D61782D6865696768743A203435253B0A7D0A';
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(13148650998710065302)
,p_theme_id=>101
,p_file_name=>'8572121638151807564.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0A7B0A2020227472616E736C617465223A20747275652C0A20202267726F757073223A5B0A20207B0A20202020226E616D65223A2022476C6F62616C20436F6C6F7273222C0A2020202022636F6D6D6F6E223A20747275652C0A2020202022736571';
wwv_flow_api.g_varchar2_table(2) := '75656E6365223A20310A20207D2C0A20207B0A20202020226E616D65223A20224D6F64616C73222C0A2020202022636F6D6D6F6E223A2066616C73652C0A202020202273657175656E6365223A20320A20207D0A20205D0A7D0A2A2F0A0A2F2A0A7B0A20';
wwv_flow_api.g_varchar2_table(3) := '202276617222203A202240675F7072696D6172795F636F6C6F72222C0A2020226E616D6522203A20225072696D61727920436F6C6F72222C0A2020227479706522203A2022636F6C6F72222C0A20202267726F7570223A2022476C6F62616C20436F6C6F';
wwv_flow_api.g_varchar2_table(4) := '7273220A7D0A2A2F0A40675F7072696D6172795F636F6C6F723A20233030424344343B0A0A6E61760A2C2E75692D7769646765740A2C7464202E75692D73746174652D6163746976650A2C7464202E75692D73746174652D686F7665720A2C2E70616769';
wwv_flow_api.g_varchar2_table(5) := '6E6174696F6E202E696E737472756374696F6E7465787420620A2C666F6F7465722E706167652D666F6F7465720A2C2E706167696E6174696F6E206C692E6163746976650A2C2E736964652D6E6176202E636F6C6C61707369626C652D626F6479206C69';
wwv_flow_api.g_varchar2_table(6) := '2E6163746976652C202E736964652D6E61762E6669786564202E636F6C6C61707369626C652D626F6479206C692E616374697665207B0A202020206261636B67726F756E643A2040675F7072696D6172795F636F6C6F723B0A202020206261636B67726F';
wwv_flow_api.g_varchar2_table(7) := '756E642D636F6C6F723A2040675F7072696D6172795F636F6C6F723B0A7D0A0A2E70726F6D6F2D6920690A2C2E70726F6D6F20690A2C2E6865616465720A2C692E70726F6D6F0A2C2E74616273202E7461622061207B0A20202020636F6C6F723A204067';
wwv_flow_api.g_varchar2_table(8) := '5F7072696D6172795F636F6C6F723B0A7D0A0A626C6F636B71756F7465207B0A20202020626F726465722D6C6566743A2035707820736F6C69642040675F7072696D6172795F636F6C6F723B200A7D0A0A2F2A0A7B0A20202276617222203A202240675F';
wwv_flow_api.g_varchar2_table(9) := '7365636F6E646172795F636F6C6F72222C0A2020226E616D6522203A20225365636F6E6461727920436F6C6F72222C0A2020227479706522203A2022636F6C6F72222C0A20202267726F7570223A2022476C6F62616C20436F6C6F7273220A7D0A2A2F0A';
wwv_flow_api.g_varchar2_table(10) := '40675F7365636F6E646172795F636F6C6F723A20234546353335303B0A0A2E636F6C6C656374696F6E202E636F6C6C656374696F6E2D6974656D2E6163746976650A2C7370616E2E62616467652E6E65770A2C2E70726F6772657373202E64657465726D';
wwv_flow_api.g_varchar2_table(11) := '696E6174650A2C2E70726F6772657373202E696E64657465726D696E6174650A2C2E62746E2C202E62746E2D6C617267650A2C2E612D4952522D746F6F6C626172202E612D4952522D636F6E74726F6C47726F75702E612D4952522D636F6E74726F6C47';
wwv_flow_api.g_varchar2_table(12) := '726F75702D2D73656172636820627574746F6E2C202E612D4952522D746F6F6C626172202E612D4952522D636F6E74726F6C47726F75702E612D4952522D636F6E74726F6C47726F75702D2D6F7074696F6E7320627574746F6E2C202E612D4952522D74';
wwv_flow_api.g_varchar2_table(13) := '6F6F6C626172202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D7265706F7274566965772C202E612D4952522D64657461696C2D726F772C202E612D4952522D706167696E6174696F6E2D6974656D3A66697273742D6368696C64';
wwv_flow_api.g_varchar2_table(14) := '202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E2C202E612D4952522D706167696E6174696F6E2D6974656D3A6C6173742D6368696C64202E612D4952522D627574746F6E2E612D4952522D627574746F';
wwv_flow_api.g_varchar2_table(15) := '6E2D2D706167696E6174696F6E0A2C2E62746E2D666C6F6174696E672C202E612D4952522D746F6F6C626172202E612D4952522D636F6E74726F6C47726F75702E612D4952522D636F6E74726F6C47726F75702D2D766965777320627574746F6E0A2C5B';
wwv_flow_api.g_varchar2_table(16) := '747970653D22636865636B626F78225D2E66696C6C65642D696E3A636865636B6564202B206C6162656C3A6166746572207B0A202020206261636B67726F756E642D636F6C6F723A2040675F7365636F6E646172795F636F6C6F723B0A7D0A0A2E636F6C';
wwv_flow_api.g_varchar2_table(17) := '6C656374696F6E20612E636F6C6C656374696F6E2D6974656D0A2C2E7365636F6E646172792D636F6E74656E740A2C2E64726F70646F776E2D636F6E74656E74206C69203E20612C202E64726F70646F776E2D636F6E74656E74206C69203E207370616E';
wwv_flow_api.g_varchar2_table(18) := '0A2C696E7075745B747970653D746578745D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C20696E7075745B747970653D70617373776F72645D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C';
wwv_flow_api.g_varchar2_table(19) := '2C20696E7075745B747970653D656D61696C5D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C20696E7075745B747970653D75726C5D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C20696E';
wwv_flow_api.g_varchar2_table(20) := '7075745B747970653D74696D655D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C20696E7075745B747970653D646174655D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C20696E7075745B';
wwv_flow_api.g_varchar2_table(21) := '747970653D6461746574696D652D6C6F63616C5D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C20696E7075745B747970653D74656C5D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C2069';
wwv_flow_api.g_varchar2_table(22) := '6E7075745B747970653D6E756D6265725D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C20696E7075745B747970653D7365617263685D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C2074';
wwv_flow_api.g_varchar2_table(23) := '657874617265612E6D6174657269616C697A652D74657874617265613A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C0A2C2E696E7075742D6669656C64202E7072656669782E6163746976650A2C5B747970653D2272616469';
wwv_flow_api.g_varchar2_table(24) := '6F225D3A636865636B6564202B206C6162656C3A61667465720A2C5B747970653D22726164696F225D2E776974682D6761703A636865636B6564202B206C6162656C3A61667465720A7B0A20202020636F6C6F723A2040675F7365636F6E646172795F63';
wwv_flow_api.g_varchar2_table(25) := '6F6C6F723B0A7D0A0A696E7075745B747970653D746578745D3A666F6375733A6E6F74285B726561646F6E6C795D292C20696E7075745B747970653D70617373776F72645D3A666F6375733A6E6F74285B726561646F6E6C795D292C20696E7075745B74';
wwv_flow_api.g_varchar2_table(26) := '7970653D656D61696C5D3A666F6375733A6E6F74285B726561646F6E6C795D292C20696E7075745B747970653D75726C5D3A666F6375733A6E6F74285B726561646F6E6C795D292C20696E7075745B747970653D74696D655D3A666F6375733A6E6F7428';
wwv_flow_api.g_varchar2_table(27) := '5B726561646F6E6C795D292C20696E7075745B747970653D646174655D3A666F6375733A6E6F74285B726561646F6E6C795D292C20696E7075745B747970653D6461746574696D652D6C6F63616C5D3A666F6375733A6E6F74285B726561646F6E6C795D';
wwv_flow_api.g_varchar2_table(28) := '292C20696E7075745B747970653D74656C5D3A666F6375733A6E6F74285B726561646F6E6C795D292C20696E7075745B747970653D6E756D6265725D3A666F6375733A6E6F74285B726561646F6E6C795D292C20696E7075745B747970653D7365617263';
wwv_flow_api.g_varchar2_table(29) := '685D3A666F6375733A6E6F74285B726561646F6E6C795D292C2074657874617265612E6D6174657269616C697A652D74657874617265613A666F6375733A6E6F74285B726561646F6E6C795D29200A7B0A20202020626F726465722D626F74746F6D3A20';
wwv_flow_api.g_varchar2_table(30) := '31707820736F6C69642040675F7365636F6E646172795F636F6C6F723B0A20202020626F782D736861646F773A203020317078203020302040675F7365636F6E646172795F636F6C6F723B200A7D0A0A5B747970653D22726164696F225D3A636865636B';
wwv_flow_api.g_varchar2_table(31) := '6564202B206C6162656C3A61667465720A2C5B747970653D22726164696F225D2E776974682D6761703A636865636B6564202B206C6162656C3A6265666F72650A2C5B747970653D22726164696F225D2E776974682D6761703A636865636B6564202B20';
wwv_flow_api.g_varchar2_table(32) := '6C6162656C3A61667465720A2C5B747970653D22636865636B626F78225D2E66696C6C65642D696E3A636865636B6564202B206C6162656C3A61667465720A7B0A20202020626F726465723A2032707820736F6C69642040675F7365636F6E646172795F';
wwv_flow_api.g_varchar2_table(33) := '636F6C6F723B0A7D0A0A5B747970653D22636865636B626F78225D3A636865636B6564202B206C6162656C3A6265666F7265200A7B0A20202020626F726465722D72696768743A2032707820736F6C69642040675F7365636F6E646172795F636F6C6F72';
wwv_flow_api.g_varchar2_table(34) := '3B0A20202020626F726465722D626F74746F6D3A2032707820736F6C69642040675F7365636F6E646172795F636F6C6F723B0A7D0A0A5B747970653D22636865636B626F78225D3A696E64657465726D696E617465202B206C6162656C3A6265666F7265';
wwv_flow_api.g_varchar2_table(35) := '0A7B0A20202020626F726465722D72696768743A2032707820736F6C69642040675F7365636F6E646172795F636F6C6F723B0A7D0A0A2E62746E3A686F7665722C202E62746E2D6C617267653A686F7665722C202E612D4952522D746F6F6C626172202E';
wwv_flow_api.g_varchar2_table(36) := '612D4952522D636F6E74726F6C47726F75702E612D4952522D636F6E74726F6C47726F75702D2D73656172636820627574746F6E3A686F7665722C202E612D4952522D746F6F6C626172202E612D4952522D636F6E74726F6C47726F75702E612D495252';
wwv_flow_api.g_varchar2_table(37) := '2D636F6E74726F6C47726F75702D2D6F7074696F6E7320627574746F6E3A686F7665722C202E612D4952522D746F6F6C626172202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D7265706F7274566965773A686F7665722C202E61';
wwv_flow_api.g_varchar2_table(38) := '2D4952522D64657461696C2D726F773A686F7665722C202E612D4952522D706167696E6174696F6E2D6974656D3A66697273742D6368696C64202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F76';
wwv_flow_api.g_varchar2_table(39) := '65722C202E612D4952522D706167696E6174696F6E2D6974656D3A6C6173742D6368696C64202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F766572207B0A202020206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(40) := '636F6C6F723A206C69676874656E2840675F7365636F6E646172795F636F6C6F722C203525293B200A7D0A0A2F2A0A7B0A20202276617222203A202240675F6D6F64616C5F7469746C655F636F6C6F72222C0A2020226E616D6522203A20224D6F64616C';
wwv_flow_api.g_varchar2_table(41) := '205469746C6520436F6C6F72222C0A2020227479706522203A2022636F6C6F72222C0A20202267726F7570223A20224D6F64616C73220A7D0A2A2F0A40675F6D6F64616C5F7469746C655F636F6C6F723A2040675F7072696D6172795F636F6C6F723B0A';
wwv_flow_api.g_varchar2_table(42) := '0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C652C202E6D6F64616C2E626F74746F6D2D7368656574202E6D6F64616C2D7469746C65207B0A20202020636F6C6F723A2040675F6D6F64616C5F7469746C655F636F6C6F';
wwv_flow_api.g_varchar2_table(43) := '723B0A7D0A0A2F2A0A7B0A20202276617222203A202240675F6D6F64616C5F626F74746F6D5F73686565745F686569676874222C0A2020226E616D6522203A20224D6F64616C20426F74746F6D205368656574204D617820486569676874222C0A202022';
wwv_flow_api.g_varchar2_table(44) := '7479706522203A20226E756D626572222C0A202022756E697473223A202225222C0A20202272616E6765223A207B0A20202020226D696E223A2031302C0A20202020226D6178223A2039302C0A2020202022696E6372656D656E74223A20310A20207D2C';
wwv_flow_api.g_varchar2_table(45) := '0A20202267726F7570223A20224D6F64616C73220A7D0A2A2F0A40675F6D6F64616C5F626F74746F6D5F73686565745F6865696768743A203435253B0A0A2E6D6F64616C2E626F74746F6D2D73686565742C202E626F74746F6D2D73686565742E612D49';
wwv_flow_api.g_varchar2_table(46) := '52522D6469616C6F67207B0A202020206D61782D6865696768743A2040675F6D6F64616C5F626F74746F6D5F73686565745F6865696768743B0A7D';
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(13148664390125896991)
,p_theme_id=>101
,p_file_name=>'default.less'
,p_mime_type=>'application/octet-stream'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200A202A2044656661756C742052544C0A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290A202A200A202A2054686973204353532066696C65207761732067656E657261746564';
wwv_flow_api.g_varchar2_table(2) := '207573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200A202A200A202A2F0A0A6E61762C0A2E75692D7769646765742C0A7464202E75692D73746174652D61637469';
wwv_flow_api.g_varchar2_table(3) := '76652C0A7464202E75692D73746174652D686F7665722C0A2E706167696E6174696F6E202E696E737472756374696F6E7465787420622C0A666F6F7465722E706167652D666F6F7465722C0A2E706167696E6174696F6E206C692E6163746976652C0A2E';
wwv_flow_api.g_varchar2_table(4) := '736964652D6E6176202E636F6C6C61707369626C652D626F6479206C692E6163746976652C0A2E736964652D6E61762E6669786564202E636F6C6C61707369626C652D626F6479206C692E616374697665207B0A20206261636B67726F756E643A202330';
wwv_flow_api.g_varchar2_table(5) := '30626364343B0A20206261636B67726F756E642D636F6C6F723A20233030626364343B0A7D0A2E70726F6D6F2D6920692C0A2E70726F6D6F20692C0A2E6865616465722C0A692E70726F6D6F2C0A2E74616273202E7461622061207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(6) := '3A20233030626364343B0A7D0A626C6F636B71756F7465207B0A2020626F726465722D6C6566743A2035707820736F6C696420233030626364343B0A7D0A0A2E636F6C6C656374696F6E202E636F6C6C656374696F6E2D6974656D2E6163746976652C0A';
wwv_flow_api.g_varchar2_table(7) := '7370616E2E62616467652E6E65772C0A2E70726F6772657373202E64657465726D696E6174652C0A2E70726F6772657373202E696E64657465726D696E6174652C0A2E62746E2C0A2E62746E2D6C617267652C0A2E612D4952522D746F6F6C626172202E';
wwv_flow_api.g_varchar2_table(8) := '612D4952522D636F6E74726F6C47726F75702E612D4952522D636F6E74726F6C47726F75702D2D73656172636820627574746F6E2C0A2E612D4952522D746F6F6C626172202E612D4952522D636F6E74726F6C47726F75702E612D4952522D636F6E7472';
wwv_flow_api.g_varchar2_table(9) := '6F6C47726F75702D2D6F7074696F6E7320627574746F6E2C0A2E612D4952522D746F6F6C626172202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D7265706F7274566965772C0A2E612D4952522D64657461696C2D726F772C0A2E';
wwv_flow_api.g_varchar2_table(10) := '612D4952522D706167696E6174696F6E2D6974656D3A66697273742D6368696C64202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E2C0A2E612D4952522D706167696E6174696F6E2D6974656D3A6C6173';
wwv_flow_api.g_varchar2_table(11) := '742D6368696C64202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E2C0A2E62746E2D666C6F6174696E672C0A2E612D4952522D746F6F6C626172202E612D4952522D636F6E74726F6C47726F75702E612D';
wwv_flow_api.g_varchar2_table(12) := '4952522D636F6E74726F6C47726F75702D2D766965777320627574746F6E2C0A5B747970653D22636865636B626F78225D2E66696C6C65642D696E3A636865636B6564202B206C6162656C3A6166746572207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(13) := '6F723A20236566353335303B0A7D0A2E636F6C6C656374696F6E20612E636F6C6C656374696F6E2D6974656D2C0A2E7365636F6E646172792D636F6E74656E742C0A2E64726F70646F776E2D636F6E74656E74206C69203E20612C0A2E64726F70646F77';
wwv_flow_api.g_varchar2_table(14) := '6E2D636F6E74656E74206C69203E207370616E2C0A696E7075745B747970653D746578745D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D70617373776F72645D3A666F6375733A6E6F7428';
wwv_flow_api.g_varchar2_table(15) := '5B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D656D61696C5D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D75726C5D3A666F6375733A6E6F74285B726561';
wwv_flow_api.g_varchar2_table(16) := '646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D74696D655D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D646174655D3A666F6375733A6E6F74285B726561646F6E6C';
wwv_flow_api.g_varchar2_table(17) := '795D29202B206C6162656C2C0A696E7075745B747970653D6461746574696D652D6C6F63616C5D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D74656C5D3A666F6375733A6E6F74285B7265';
wwv_flow_api.g_varchar2_table(18) := '61646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D6E756D6265725D3A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A696E7075745B747970653D7365617263685D3A666F6375733A6E6F74285B7265';
wwv_flow_api.g_varchar2_table(19) := '61646F6E6C795D29202B206C6162656C2C0A74657874617265612E6D6174657269616C697A652D74657874617265613A666F6375733A6E6F74285B726561646F6E6C795D29202B206C6162656C2C0A2E696E7075742D6669656C64202E7072656669782E';
wwv_flow_api.g_varchar2_table(20) := '6163746976652C0A5B747970653D22726164696F225D3A636865636B6564202B206C6162656C3A61667465722C0A5B747970653D22726164696F225D2E776974682D6761703A636865636B6564202B206C6162656C3A6166746572207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(21) := '723A20236566353335303B0A7D0A696E7075745B747970653D746578745D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D70617373776F72645D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E';
wwv_flow_api.g_varchar2_table(22) := '7075745B747970653D656D61696C5D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D75726C5D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D74696D655D3A666F637573';
wwv_flow_api.g_varchar2_table(23) := '3A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D646174655D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D6461746574696D652D6C6F63616C5D3A666F6375733A6E6F74285B72656164';
wwv_flow_api.g_varchar2_table(24) := '6F6E6C795D292C0A696E7075745B747970653D74656C5D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D6E756D6265725D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A696E7075745B747970653D';
wwv_flow_api.g_varchar2_table(25) := '7365617263685D3A666F6375733A6E6F74285B726561646F6E6C795D292C0A74657874617265612E6D6174657269616C697A652D74657874617265613A666F6375733A6E6F74285B726561646F6E6C795D29207B0A2020626F726465722D626F74746F6D';
wwv_flow_api.g_varchar2_table(26) := '3A2031707820736F6C696420236566353335303B0A2020626F782D736861646F773A2030203170782030203020236566353335303B0A7D0A5B747970653D22726164696F225D3A636865636B6564202B206C6162656C3A61667465722C0A5B747970653D';
wwv_flow_api.g_varchar2_table(27) := '22726164696F225D2E776974682D6761703A636865636B6564202B206C6162656C3A6265666F72652C0A5B747970653D22726164696F225D2E776974682D6761703A636865636B6564202B206C6162656C3A61667465722C0A5B747970653D2263686563';
wwv_flow_api.g_varchar2_table(28) := '6B626F78225D2E66696C6C65642D696E3A636865636B6564202B206C6162656C3A6166746572207B0A2020626F726465723A2032707820736F6C696420236566353335303B0A7D0A5B747970653D22636865636B626F78225D3A636865636B6564202B20';
wwv_flow_api.g_varchar2_table(29) := '6C6162656C3A6265666F7265207B0A2020626F726465722D72696768743A2032707820736F6C696420236566353335303B0A2020626F726465722D626F74746F6D3A2032707820736F6C696420236566353335303B0A7D0A5B747970653D22636865636B';
wwv_flow_api.g_varchar2_table(30) := '626F78225D3A696E64657465726D696E617465202B206C6162656C3A6265666F7265207B0A2020626F726465722D72696768743A2032707820736F6C696420236566353335303B0A7D0A2E62746E3A686F7665722C0A2E62746E2D6C617267653A686F76';
wwv_flow_api.g_varchar2_table(31) := '65722C0A2E612D4952522D746F6F6C626172202E612D4952522D636F6E74726F6C47726F75702E612D4952522D636F6E74726F6C47726F75702D2D73656172636820627574746F6E3A686F7665722C0A2E612D4952522D746F6F6C626172202E612D4952';
wwv_flow_api.g_varchar2_table(32) := '522D636F6E74726F6C47726F75702E612D4952522D636F6E74726F6C47726F75702D2D6F7074696F6E7320627574746F6E3A686F7665722C0A2E612D4952522D746F6F6C626172202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D';
wwv_flow_api.g_varchar2_table(33) := '7265706F7274566965773A686F7665722C0A2E612D4952522D64657461696C2D726F773A686F7665722C0A2E612D4952522D706167696E6174696F6E2D6974656D3A66697273742D6368696C64202E612D4952522D627574746F6E2E612D4952522D6275';
wwv_flow_api.g_varchar2_table(34) := '74746F6E2D2D706167696E6174696F6E3A686F7665722C0A2E612D4952522D706167696E6174696F6E2D6974656D3A6C6173742D6368696C64202E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F76';
wwv_flow_api.g_varchar2_table(35) := '6572207B0A20206261636B67726F756E642D636F6C6F723A20236631366136373B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C652C0A2E6D6F64616C2E626F74746F6D2D7368656574202E6D6F64616C2D7469';
wwv_flow_api.g_varchar2_table(36) := '746C65207B0A2020636F6C6F723A20233030626364343B0A7D0A0A2E6D6F64616C2E626F74746F6D2D73686565742C0A2E626F74746F6D2D73686565742E612D4952522D6469616C6F67207B0A20206D61782D6865696768743A203435253B0A7D0A';
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(13154081283896850791)
,p_theme_id=>101
,p_file_name=>'13153432889411705647.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(2849683582231442919)
,p_theme_id=>101
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(2849762261134432680)
,p_theme_id=>101
,p_name=>'BACKGROUND_MODIFIER'
,p_display_name=>'Background Modifier'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(2849781534506434087)
,p_theme_id=>101
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4151256800869510081)
,p_theme_id=>101
,p_name=>'HIDING_CONTENT'
,p_display_name=>'Hiding Content'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4625633226369993450)
,p_theme_id=>101
,p_name=>'HIDING_CONTENT'
,p_display_name=>'Hiding Content'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4625633820284994712)
,p_theme_id=>101
,p_name=>'HIDING_CONTENT'
,p_display_name=>'Hiding Content'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6259794612418325048)
,p_theme_id=>101
,p_name=>'RESPONSIVE_BEHAVIOR'
,p_display_name=>'Responsive Behavior'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8063349408848373599)
,p_theme_id=>101
,p_name=>'COLLAPSIBLE_BEHAVIOR'
,p_display_name=>'Collapsible Behavior'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8137243532479738359)
,p_theme_id=>101
,p_name=>'LANGUAGE_TYPE'
,p_display_name=>'Language Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8213526765441544465)
,p_theme_id=>101
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8496391179266339003)
,p_theme_id=>101
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8690623965220090355)
,p_theme_id=>101
,p_name=>'ICON_FLOAT'
,p_display_name=>'Icon Float'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_help_text=>'Only applies if your button has an icon'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8928772492775860585)
,p_theme_id=>101
,p_name=>'SECTION_HEADER_SIZE'
,p_display_name=>'Section Header Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8931961413606910069)
,p_theme_id=>101
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8931979833521911829)
,p_theme_id=>101
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8931981923662917963)
,p_theme_id=>101
,p_name=>'WAVE_EFFECT'
,p_display_name=>'Wave Effect'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'None'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9623377540309124083)
,p_theme_id=>101
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9635514774241624056)
,p_theme_id=>101
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9635515553548628706)
,p_theme_id=>101
,p_name=>'BACKGROUND_MODIFIER'
,p_display_name=>'Background Modifier'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9635536263692640129)
,p_theme_id=>101
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13154151598654866404)
,p_theme_id=>101
,p_name=>'DIRECTION'
,p_display_name=>'Direction'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19177324499174518770)
,p_theme_id=>101
,p_name=>'POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19326809326865053501)
,p_theme_id=>101
,p_name=>'ENABLE_SCROLLFIRE'
,p_display_name=>'Enable ScrollFire'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'No'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19327251606774082511)
,p_theme_id=>101
,p_name=>'ENABLE_SCROLLFIRE'
,p_display_name=>'Enable ScrollFire'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'No'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19419020753447205005)
,p_theme_id=>101
,p_name=>'BUTTONS_ALIGNMENT'
,p_display_name=>'Buttons Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829355543521850046)
,p_theme_id=>101
,p_name=>'CENTER_LOGO'
,p_display_name=>'Center Logo'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9087126745232589871)
,p_css_classes=>'center-logo'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829356526135851513)
,p_theme_id=>101
,p_name=>'NAVBAR_FIXED'
,p_display_name=>'Navbar Fixed'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9087126745232589871)
,p_css_classes=>'navbar-fixed'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829766335642932779)
,p_theme_id=>101
,p_name=>'DEPTH_1'
,p_display_name=>'Depth 1'
,p_display_sequence=>1
,p_css_classes=>'z-depth-1'
,p_group_id=>wwv_flow_api.id(8496391179266339003)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829767799620934964)
,p_theme_id=>101
,p_name=>'DEPTH_2'
,p_display_name=>'Depth 2'
,p_display_sequence=>1
,p_css_classes=>'z-depth-2'
,p_group_id=>wwv_flow_api.id(8496391179266339003)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829769162412937065)
,p_theme_id=>101
,p_name=>'DEPTH_3'
,p_display_name=>'Depth 3'
,p_display_sequence=>1
,p_css_classes=>'z-depth-3'
,p_group_id=>wwv_flow_api.id(8496391179266339003)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829769955220938568)
,p_theme_id=>101
,p_name=>'DEPTH_4'
,p_display_name=>'Depth 4'
,p_display_sequence=>1
,p_css_classes=>'z-depth-4'
,p_group_id=>wwv_flow_api.id(8496391179266339003)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829796222524940595)
,p_theme_id=>101
,p_name=>'DEPTH_5'
,p_display_name=>'Depth 5'
,p_display_sequence=>1
,p_css_classes=>'z-depth-5'
,p_group_id=>wwv_flow_api.id(8496391179266339003)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2851943062201669701)
,p_theme_id=>101
,p_name=>'BTN_BG_YELLOW'
,p_display_name=>'Yellow'
,p_display_sequence=>1
,p_css_classes=>'yellow'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2851957063792679130)
,p_theme_id=>101
,p_name=>'AMBER'
,p_display_name=>'Amber'
,p_display_sequence=>1
,p_css_classes=>'amber'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2851975156024690855)
,p_theme_id=>101
,p_name=>'BTN_BG_BLUE_GREY'
,p_display_name=>'Blue Grey'
,p_display_sequence=>1
,p_css_classes=>'blue-grey'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2851990076986675552)
,p_theme_id=>101
,p_name=>'BTN_BG_BLUE'
,p_display_name=>'Blue'
,p_display_sequence=>1
,p_css_classes=>'blue'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852020618724679445)
,p_theme_id=>101
,p_name=>'BTN_BG_BROWN'
,p_display_name=>'Brown'
,p_display_sequence=>1
,p_css_classes=>'brown'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852024090590687431)
,p_theme_id=>101
,p_name=>'BTN_BG_GREY'
,p_display_name=>'Grey'
,p_display_sequence=>1
,p_css_classes=>'grey'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852027687741696407)
,p_theme_id=>101
,p_name=>'BTN_BG_LIGHT_BLUE'
,p_display_name=>'Light Blue'
,p_display_sequence=>1
,p_css_classes=>'light-blue'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852035740975693787)
,p_theme_id=>101
,p_name=>'BTN_BG_CYAN'
,p_display_name=>'Cyan'
,p_display_sequence=>1
,p_css_classes=>'cyan'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852037006392695271)
,p_theme_id=>101
,p_name=>'BTN_BG_DEEP_ORANGE'
,p_display_name=>'Deep Orange'
,p_display_sequence=>1
,p_css_classes=>'deep-orange'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852050002853696829)
,p_theme_id=>101
,p_name=>'BTN_BG_DEEP_PURPLE'
,p_display_name=>'Deep Purple'
,p_display_sequence=>1
,p_css_classes=>'deep-purple'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852061920922698901)
,p_theme_id=>101
,p_name=>'BTN_BG_GREEN'
,p_display_name=>'Green'
,p_display_sequence=>1
,p_css_classes=>'green'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852065791340701758)
,p_theme_id=>101
,p_name=>'BTN_BG_INDIGO'
,p_display_name=>'Indigo'
,p_display_sequence=>1
,p_css_classes=>'indigo'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852079834124699900)
,p_theme_id=>101
,p_name=>'BTN_BG_LIME'
,p_display_name=>'Lime'
,p_display_sequence=>1
,p_css_classes=>'lime'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852090602173711147)
,p_theme_id=>101
,p_name=>'BTN_BG_LIGHT_GREEN'
,p_display_name=>'Light Green'
,p_display_sequence=>1
,p_css_classes=>'light-green'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852117714865704082)
,p_theme_id=>101
,p_name=>'BTN_BG_PINK'
,p_display_name=>'Pink'
,p_display_sequence=>1
,p_css_classes=>'pink'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852130060673715031)
,p_theme_id=>101
,p_name=>'BTN_BG_ORANGE'
,p_display_name=>'Orange'
,p_display_sequence=>1
,p_css_classes=>'orange'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852167961495719508)
,p_theme_id=>101
,p_name=>'BTN_BG_PURPLE'
,p_display_name=>'Purple'
,p_display_sequence=>1
,p_css_classes=>'purple'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852189553170721109)
,p_theme_id=>101
,p_name=>'BTN_BG_RED'
,p_display_name=>'Red'
,p_display_sequence=>1
,p_css_classes=>'red'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852193592042723190)
,p_theme_id=>101
,p_name=>'BTN_BG_TEAL'
,p_display_name=>'Teal'
,p_display_sequence=>1
,p_css_classes=>'teal'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852243670579726538)
,p_theme_id=>101
,p_name=>'BTN_BG_TRANSPARENT'
,p_display_name=>'Transparent'
,p_display_sequence=>1
,p_css_classes=>'transparent'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852279599904727817)
,p_theme_id=>101
,p_name=>'BTN_BG_WHITE'
,p_display_name=>'White'
,p_display_sequence=>1
,p_css_classes=>'white'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852313972762729331)
,p_theme_id=>101
,p_name=>'BTN_BG_BLACK'
,p_display_name=>'Black'
,p_display_sequence=>1
,p_css_classes=>'black'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852321482378724740)
,p_theme_id=>101
,p_name=>'BTN_BG_ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>1
,p_css_classes=>'accent-2'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852325195134734790)
,p_theme_id=>101
,p_name=>'BTN_BG_DARKEN_3'
,p_display_name=>'Darken 3'
,p_display_sequence=>1
,p_css_classes=>'darken-3'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852326886823736407)
,p_theme_id=>101
,p_name=>'BTN_BG_DARKEN_4'
,p_display_name=>'Darken 4'
,p_display_sequence=>1
,p_css_classes=>'darken-4'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852388705810736124)
,p_theme_id=>101
,p_name=>'BTN_BG_ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>1
,p_css_classes=>'accent-1'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852426227955739572)
,p_theme_id=>101
,p_name=>'BTN_BG_ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>1
,p_css_classes=>'accent-3'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852442045334741786)
,p_theme_id=>101
,p_name=>'BTN_BG_ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>1
,p_css_classes=>'accent-4'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852448109235744112)
,p_theme_id=>101
,p_name=>'BTN_BG_DARKEN_1'
,p_display_name=>'Darken 1'
,p_display_sequence=>1
,p_css_classes=>'darken-1'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852474613521745920)
,p_theme_id=>101
,p_name=>'BTN_BG_DARKEN_2'
,p_display_name=>'Darken 2'
,p_display_sequence=>1
,p_css_classes=>'darken-2'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852496639548756452)
,p_theme_id=>101
,p_name=>'BTN_BG_LIGHTEN_3'
,p_display_name=>'Lighten 3'
,p_display_sequence=>1
,p_css_classes=>'lighten-3'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852498120842738908)
,p_theme_id=>101
,p_name=>'BTN_BG_LIGHTEN_1'
,p_display_name=>'Lighten 1'
,p_display_sequence=>1
,p_css_classes=>'lighten-1'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852499620510741284)
,p_theme_id=>101
,p_name=>'BTN_BG_LIGHTEN_2'
,p_display_name=>'Lighten 2'
,p_display_sequence=>1
,p_css_classes=>'lighten-2'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852519198374745716)
,p_theme_id=>101
,p_name=>'BTN_BG_LIGHTEN_4'
,p_display_name=>'Lighten 4'
,p_display_sequence=>1
,p_css_classes=>'lighten-4'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852520755001748866)
,p_theme_id=>101
,p_name=>'BTN_BG_LIGHTEN_5'
,p_display_name=>'Lighten 5'
,p_display_sequence=>1
,p_css_classes=>'lighten-5'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852677079942797644)
,p_theme_id=>101
,p_name=>'BTN_TEXT_YELLOW'
,p_display_name=>'Yellow'
,p_display_sequence=>1
,p_css_classes=>'yellow-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852787046765787062)
,p_theme_id=>101
,p_name=>'BTN_TEXT_WHITE'
,p_display_name=>'White'
,p_display_sequence=>1
,p_css_classes=>'white-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852823082099791055)
,p_theme_id=>101
,p_name=>'BTN_TEXT_BLUE_GREY'
,p_display_name=>'Blue Grey'
,p_display_sequence=>1
,p_css_classes=>'blue-grey-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852825843774793660)
,p_theme_id=>101
,p_name=>'BTN_TEXT_BLUE'
,p_display_name=>'Blue'
,p_display_sequence=>1
,p_css_classes=>'blue-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852834112600795688)
,p_theme_id=>101
,p_name=>'BTN_TEXT_BROWN'
,p_display_name=>'Brown'
,p_display_sequence=>1
,p_css_classes=>'brown-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852843563019796779)
,p_theme_id=>101
,p_name=>'BTN_TEXT_CYAN'
,p_display_name=>'Cyan'
,p_display_sequence=>1
,p_css_classes=>'cyan-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852878651026798997)
,p_theme_id=>101
,p_name=>'BTN_TEXT_DEEP_ORANGE'
,p_display_name=>'Deep Orange'
,p_display_sequence=>1
,p_css_classes=>'deep-orange-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852883330953800653)
,p_theme_id=>101
,p_name=>'BTN_TEXT_DEEP_PURPLE'
,p_display_name=>'Deep Purple'
,p_display_sequence=>1
,p_css_classes=>'deep-purple-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852884774354801801)
,p_theme_id=>101
,p_name=>'BTN_TEXT_GREEN'
,p_display_name=>'Green'
,p_display_sequence=>1
,p_css_classes=>'green-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852895920576825671)
,p_theme_id=>101
,p_name=>'BTN_TEXT_LIME'
,p_display_name=>'Lime'
,p_display_sequence=>1
,p_css_classes=>'lime-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852928126234803119)
,p_theme_id=>101
,p_name=>'BTN_TEXT_GREY'
,p_display_name=>'Grey'
,p_display_sequence=>1
,p_css_classes=>'grey-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852966618132805490)
,p_theme_id=>101
,p_name=>'BTN_TEXT_INDIGO'
,p_display_name=>'Indigo'
,p_display_sequence=>1
,p_css_classes=>'indigo-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852989683779809533)
,p_theme_id=>101
,p_name=>'BTN_TEXT_LIGHT_BLUE'
,p_display_name=>'Light Blue'
,p_display_sequence=>1
,p_css_classes=>'light-blue-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852994625794811287)
,p_theme_id=>101
,p_name=>'BTN_TEXT_LIGHT_GREEN'
,p_display_name=>'Light Green'
,p_display_sequence=>1
,p_css_classes=>'light-green-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853000651660827584)
,p_theme_id=>101
,p_name=>'BTN_TEXT_ORANGE'
,p_display_name=>'Orange'
,p_display_sequence=>1
,p_css_classes=>'orange-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853018795355829542)
,p_theme_id=>101
,p_name=>'BTN_TEXT_PINK'
,p_display_name=>'Pink'
,p_display_sequence=>1
,p_css_classes=>'pink-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853040556236818104)
,p_theme_id=>101
,p_name=>'BTN_TEXT_PURPLE'
,p_display_name=>'Purple'
,p_display_sequence=>1
,p_css_classes=>'purple-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853059316287819992)
,p_theme_id=>101
,p_name=>'BTN_TEXT_RED'
,p_display_name=>'Red'
,p_display_sequence=>1
,p_css_classes=>'red-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853062561243821799)
,p_theme_id=>101
,p_name=>'BTN_TEXT_TEAL'
,p_display_name=>'Teal'
,p_display_sequence=>1
,p_css_classes=>'teal-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853075207241823561)
,p_theme_id=>101
,p_name=>'BTN_TEXT_AMBER'
,p_display_name=>'Amber'
,p_display_sequence=>1
,p_css_classes=>'amber-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4063745823980324753)
,p_theme_id=>101
,p_name=>'NO_LABEL'
,p_display_name=>'No Label'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(9361856552060152525)
,p_css_classes=>'item-no-label'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4150189860267332775)
,p_theme_id=>101
,p_name=>'VERTICAL_ALIGNED'
,p_display_name=>'Vertical Aligned'
,p_display_sequence=>1
,p_css_classes=>'valign-wrapper'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151259433092514811)
,p_theme_id=>101
,p_name=>'REGION_HIDDEN_FOR_ALL_DEVICES'
,p_display_name=>'Hidden for all Devices'
,p_display_sequence=>1
,p_css_classes=>'hide'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151260592160517522)
,p_theme_id=>101
,p_name=>'REGION_HIDDEN_FOR_MOBILE_ONLY'
,p_display_name=>'Hidden for Small Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151265791919519846)
,p_theme_id=>101
,p_name=>'REGION_HIDDEN_FOR_TABLET_ONLY'
,p_display_name=>'Hidden for Medium Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-only'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151289417207516064)
,p_theme_id=>101
,p_name=>'R_HIDDEN_FOR_TABLET_AND_BELOW'
,p_display_name=>'Hidden for Medium and Below'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-down'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151290024434518478)
,p_theme_id=>101
,p_name=>'R_HIDDEN_FOR_TABLET_AND_ABOVE'
,p_display_name=>'Hidden for Medium and Above'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-up'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151331658093533056)
,p_theme_id=>101
,p_name=>'R_HIDDEN_FOR_DESKTOP_ONLY'
,p_display_name=>'Hidden for Large Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151357532997543156)
,p_theme_id=>101
,p_name=>'TRUNCATE_TEXT_OVERFLOW'
,p_display_name=>'Truncate Text Overflow'
,p_display_sequence=>1
,p_css_classes=>'truncate'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4152941575161142711)
,p_theme_id=>101
,p_name=>'R_HIDDEN_FOR_SMALL_AND_LARGE'
,p_display_name=>'Hidden for Small and Large'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4170574158063074676)
,p_theme_id=>101
,p_name=>'FIXED_FOOTER'
,p_display_name=>'Fixed Footer'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4170487165352055150)
,p_css_classes=>'modal-fixed-footer'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4170588952097081936)
,p_theme_id=>101
,p_name=>'BOTTOM_SHEET'
,p_display_name=>'Bottom Sheet'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4170487165352055150)
,p_css_classes=>'bottom-sheet'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625496995757167368)
,p_theme_id=>101
,p_name=>'I_HIDDEN_FOR_MEDIUM_AND_BELOW'
,p_display_name=>'Hidden for Medium and Below'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-down'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625635597248997948)
,p_theme_id=>101
,p_name=>'I_HIDDEN_FOR_ALL_DEVICES'
,p_display_name=>'Hidden for all Devices'
,p_display_sequence=>1
,p_css_classes=>'hide'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625636578614999716)
,p_theme_id=>101
,p_name=>'I_HIDDEN_FOR_LARGE_ONLY'
,p_display_name=>'Hidden for Large Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625637605543002288)
,p_theme_id=>101
,p_name=>'I_HIDDEN_FOR_SMALL_AND_LARGE'
,p_display_name=>'Hidden for Small and Large'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625638070988003396)
,p_theme_id=>101
,p_name=>'I_HIDDEN_FOR_MEDIUM_ONLY'
,p_display_name=>'Hidden for Medium Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-only'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625638348996004643)
,p_theme_id=>101
,p_name=>'I_HIDDEN_FOR_SMALL_ONLY'
,p_display_name=>'Hidden for Small Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625639027067006058)
,p_theme_id=>101
,p_name=>'I_HIDDEN_FOR_MEDIUM_AND_ABOVE'
,p_display_name=>'Hidden for Medium and Above'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-up'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625639674782008326)
,p_theme_id=>101
,p_name=>'B_HIDDEN_FOR_ALL_DEVICES'
,p_display_name=>'Hidden for all Devices'
,p_display_sequence=>1
,p_css_classes=>'hide'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625642083908010409)
,p_theme_id=>101
,p_name=>'B_HIDDEN_FOR_LARGE_ONLY'
,p_display_name=>'Hidden for Large Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625643381372011697)
,p_theme_id=>101
,p_name=>'B_HIDDEN_FOR_MEDIUM_AND_BELOW'
,p_display_name=>'Hidden for Medium and Below'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-down'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625645330194012988)
,p_theme_id=>101
,p_name=>'B_HIDDEN_FOR_SMALL_AND_LARGE'
,p_display_name=>'Hidden for Small and Large'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625646018032014136)
,p_theme_id=>101
,p_name=>'B_HIDDEN_FOR_MEDIUM_ONLY'
,p_display_name=>'Hidden for Medium Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-only'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625646792303015318)
,p_theme_id=>101
,p_name=>'B_HIDDEN_FOR_SMALL_ONLY'
,p_display_name=>'Hidden for Small Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625647788825016695)
,p_theme_id=>101
,p_name=>'B_HIDDEN_FOR_MEDIUM_AND_ABOVE'
,p_display_name=>'Hidden for Medium and Above'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-up'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6259770708666321001)
,p_theme_id=>101
,p_name=>'STYLE_2'
,p_display_name=>'Style 2'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9090634527809844626)
,p_css_classes=>'table-responsive'
,p_group_id=>wwv_flow_api.id(6259794612418325048)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8063351912902394579)
,p_theme_id=>101
,p_name=>'EXPANDABLE'
,p_display_name=>'Expandable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(8062881798324256540)
,p_css_classes=>'expandable'
,p_group_id=>wwv_flow_api.id(8063349408848373599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8063393678537405817)
,p_theme_id=>101
,p_name=>'ACCORDION'
,p_display_name=>'Accordion'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(8062881798324256540)
,p_css_classes=>'accordion'
,p_group_id=>wwv_flow_api.id(8063349408848373599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8137253363842753828)
,p_theme_id=>101
,p_name=>'JAVASCRIPT'
,p_display_name=>'JavaScript'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8137249185487745518)
,p_css_classes=>'language-javascript'
,p_group_id=>wwv_flow_api.id(8137243532479738359)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8137253866120755561)
,p_theme_id=>101
,p_name=>'SQL'
,p_display_name=>'SQL'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8137249185487745518)
,p_css_classes=>'language-sql'
,p_group_id=>wwv_flow_api.id(8137243532479738359)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8137254554477757124)
,p_theme_id=>101
,p_name=>'CSS'
,p_display_name=>'CSS'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8137249185487745518)
,p_css_classes=>'language-css'
,p_group_id=>wwv_flow_api.id(8137243532479738359)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8137254894506758299)
,p_theme_id=>101
,p_name=>'SCSS'
,p_display_name=>'SCSS'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8137249185487745518)
,p_css_classes=>'language-scss'
,p_group_id=>wwv_flow_api.id(8137243532479738359)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8137255308146759741)
,p_theme_id=>101
,p_name=>'HTML'
,p_display_name=>'HTML'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(8137249185487745518)
,p_css_classes=>'language-markup'
,p_group_id=>wwv_flow_api.id(8137243532479738359)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8138447448141133350)
,p_theme_id=>101
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'hide-title'
,p_group_id=>wwv_flow_api.id(8928772492775860585)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8213539241150548078)
,p_theme_id=>101
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'left-align'
,p_group_id=>wwv_flow_api.id(8213526765441544465)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8213539941152549367)
,p_theme_id=>101
,p_name=>'CENTER'
,p_display_name=>'Center'
,p_display_sequence=>1
,p_css_classes=>'center-align'
,p_group_id=>wwv_flow_api.id(8213526765441544465)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8213540570413550201)
,p_theme_id=>101
,p_name=>'RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>1
,p_css_classes=>'right-align'
,p_group_id=>wwv_flow_api.id(8213526765441544465)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8214583615358689636)
,p_theme_id=>101
,p_name=>'WHITE'
,p_display_name=>'White'
,p_display_sequence=>1
,p_css_classes=>'white-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8459270597216962077)
,p_theme_id=>101
,p_name=>'FIXED_FOOTER'
,p_display_name=>'Fixed Footer'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(8428157000573412650)
,p_css_classes=>'modal-fixed-footer'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8594017901327609110)
,p_theme_id=>101
,p_name=>'POPOUT'
,p_display_name=>'Popout'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(8062881798324256540)
,p_css_classes=>'popout'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8690625419994095075)
,p_theme_id=>101
,p_name=>'ICON-FLOAT-LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_css_classes=>'icon-float-left'
,p_group_id=>wwv_flow_api.id(8690623965220090355)
,p_template_types=>'BUTTON'
,p_help_text=>'Only applies if the button has an icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8690625821410097746)
,p_theme_id=>101
,p_name=>'ICON-FLOAT-RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_css_classes=>'icon-float-right'
,p_group_id=>wwv_flow_api.id(8690623965220090355)
,p_template_types=>'BUTTON'
,p_help_text=>'Only applies if the button has an icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8747905458297490916)
,p_theme_id=>101
,p_name=>'REGION_BG_BLACK'
,p_display_name=>'Black'
,p_display_sequence=>1
,p_css_classes=>'black'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8747925926475493992)
,p_theme_id=>101
,p_name=>'REGION_BG_WHITE'
,p_display_name=>'White'
,p_display_sequence=>1
,p_css_classes=>'white'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8747927235057495360)
,p_theme_id=>101
,p_name=>'REGION_BG_TRANSPARENT'
,p_display_name=>'Transparent'
,p_display_sequence=>1
,p_css_classes=>'transparent'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8754251648233224011)
,p_theme_id=>101
,p_name=>'MATERIAL_DATE_PICKER'
,p_display_name=>'Material Date Picker'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(9361856552060152525)
,p_css_classes=>'material-apex-datepicker'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8772827267863929690)
,p_theme_id=>101
,p_name=>'CENTER_LOGO'
,p_display_name=>'Center Logo'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_css_classes=>'page-center-logo'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8772827838916931432)
,p_theme_id=>101
,p_name=>'NAVIGATION_BAR_FIXED'
,p_display_name=>'Navigation Bar Fixed'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_css_classes=>'page-navbar-fixed'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8927977247325567220)
,p_theme_id=>101
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9090634527809844626)
,p_css_classes=>'borderless'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8927977730639568900)
,p_theme_id=>101
,p_name=>'HOVERABLE'
,p_display_name=>'Hoverable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9090634527809844626)
,p_css_classes=>'hoverable'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8927978453214570135)
,p_theme_id=>101
,p_name=>'RESPONSIVE'
,p_display_name=>'Style 1'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9090634527809844626)
,p_css_classes=>'responsive-table'
,p_group_id=>wwv_flow_api.id(6259794612418325048)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8927979080605574044)
,p_theme_id=>101
,p_name=>'STRIPED'
,p_display_name=>'Striped'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9090634527809844626)
,p_css_classes=>'striped'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8928701331158829713)
,p_theme_id=>101
,p_name=>'SCROLLSPY'
,p_display_name=>'Scrollspy'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'scrollspy'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8928751170841884859)
,p_theme_id=>101
,p_name=>'H1'
,p_display_name=>'H1'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'h1'
,p_group_id=>wwv_flow_api.id(8928772492775860585)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8928776227574872798)
,p_theme_id=>101
,p_name=>'H2'
,p_display_name=>'H2'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'h2'
,p_group_id=>wwv_flow_api.id(8928772492775860585)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932337665057014668)
,p_theme_id=>101
,p_name=>'LIGHT'
,p_display_name=>'Light'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-light'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932338046567016920)
,p_theme_id=>101
,p_name=>'RED'
,p_display_name=>'Red'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-red'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932338450855017969)
,p_theme_id=>101
,p_name=>'YELLOW'
,p_display_name=>'Yellow'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-yellow'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932341759735020280)
,p_theme_id=>101
,p_name=>'PURPLE'
,p_display_name=>'Purple'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-purple'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932351595116005968)
,p_theme_id=>101
,p_name=>'ORANGE'
,p_display_name=>'Orange'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-orange'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932352064223008338)
,p_theme_id=>101
,p_name=>'GREEN'
,p_display_name=>'Green'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-green'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932401279622022617)
,p_theme_id=>101
,p_name=>'TEAL'
,p_display_name=>'Teal'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-teal'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623329677206118649)
,p_theme_id=>101
,p_name=>'DEPTH_1'
,p_display_name=>'Depth 1'
,p_display_sequence=>1
,p_css_classes=>'z-depth-1'
,p_group_id=>wwv_flow_api.id(9623377540309124083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623330015757120168)
,p_theme_id=>101
,p_name=>'DEPTH_2'
,p_display_name=>'Depth 2'
,p_display_sequence=>1
,p_css_classes=>'z-depth-2'
,p_group_id=>wwv_flow_api.id(9623377540309124083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623330308933121027)
,p_theme_id=>101
,p_name=>'DEPTH_3'
,p_display_name=>'Depth 3'
,p_display_sequence=>1
,p_css_classes=>'z-depth-3'
,p_group_id=>wwv_flow_api.id(9623377540309124083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623330577907122276)
,p_theme_id=>101
,p_name=>'DEPTH_4'
,p_display_name=>'Depth 4'
,p_display_sequence=>1
,p_css_classes=>'z-depth-4'
,p_group_id=>wwv_flow_api.id(9623377540309124083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623330917299123071)
,p_theme_id=>101
,p_name=>'DEPTH_5'
,p_display_name=>'Depth 5'
,p_display_sequence=>1
,p_css_classes=>'z-depth-5'
,p_group_id=>wwv_flow_api.id(9623377540309124083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623417201819256987)
,p_theme_id=>101
,p_name=>'H3'
,p_display_name=>'H3'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'h3'
,p_group_id=>wwv_flow_api.id(8928772492775860585)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623417500988257893)
,p_theme_id=>101
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'h4'
,p_group_id=>wwv_flow_api.id(8928772492775860585)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623417773687259055)
,p_theme_id=>101
,p_name=>'H5'
,p_display_name=>'H5'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'h5'
,p_group_id=>wwv_flow_api.id(8928772492775860585)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623418070578259721)
,p_theme_id=>101
,p_name=>'H6'
,p_display_name=>'H6'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'h6'
,p_group_id=>wwv_flow_api.id(8928772492775860585)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9625634817489187418)
,p_theme_id=>101
,p_name=>'FLOW_TEXT'
,p_display_name=>'Flow Text'
,p_display_sequence=>1
,p_css_classes=>'flow-text-region'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635537280154650129)
,p_theme_id=>101
,p_name=>'REGION_BG_RED'
,p_display_name=>'Red'
,p_display_sequence=>1
,p_css_classes=>'red'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635538360975652101)
,p_theme_id=>101
,p_name=>'REGION_BG_PINK'
,p_display_name=>'Pink'
,p_display_sequence=>1
,p_css_classes=>'pink'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635538670361653373)
,p_theme_id=>101
,p_name=>'REGION_BG_PURPLE'
,p_display_name=>'Purple'
,p_display_sequence=>1
,p_css_classes=>'purple'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635538920568655215)
,p_theme_id=>101
,p_name=>'REGION_BG_DEEP_PURPLE'
,p_display_name=>'Deep Purple'
,p_display_sequence=>1
,p_css_classes=>'deep-purple'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635539317038657094)
,p_theme_id=>101
,p_name=>'REGION_BG_INDIGO'
,p_display_name=>'Indigo'
,p_display_sequence=>1
,p_css_classes=>'indigo'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635539566580658210)
,p_theme_id=>101
,p_name=>'REGION_BG_BLUE'
,p_display_name=>'Blue'
,p_display_sequence=>1
,p_css_classes=>'blue'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635542302527681431)
,p_theme_id=>101
,p_name=>'REGION_BG_LIGHT_BLUE'
,p_display_name=>'Light Blue'
,p_display_sequence=>1
,p_css_classes=>'light-blue'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635542650082682395)
,p_theme_id=>101
,p_name=>'REGION_BG_CYAN'
,p_display_name=>'Cyan'
,p_display_sequence=>1
,p_css_classes=>'cyan'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635542958117683760)
,p_theme_id=>101
,p_name=>'REGION_BG_TEAL'
,p_display_name=>'Teal'
,p_display_sequence=>1
,p_css_classes=>'teal'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635543487064684946)
,p_theme_id=>101
,p_name=>'REGION_BG_GREEN'
,p_display_name=>'Green'
,p_display_sequence=>1
,p_css_classes=>'green'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635543858419687036)
,p_theme_id=>101
,p_name=>'REGION_BG_LIGHT_GREEN'
,p_display_name=>'Light Green'
,p_display_sequence=>1
,p_css_classes=>'light-green'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635544159862688331)
,p_theme_id=>101
,p_name=>'REGION_BG_LIME'
,p_display_name=>'Lime'
,p_display_sequence=>1
,p_css_classes=>'lime'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635544505358689954)
,p_theme_id=>101
,p_name=>'REGION_BG_YELLOW'
,p_display_name=>'Yellow'
,p_display_sequence=>1
,p_css_classes=>'yellow'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635544725988691609)
,p_theme_id=>101
,p_name=>'REGION_BG_AMBER'
,p_display_name=>'Amber'
,p_display_sequence=>1
,p_css_classes=>'amber'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635545092901696429)
,p_theme_id=>101
,p_name=>'REGION_BG_ORANGE'
,p_display_name=>'Orange'
,p_display_sequence=>1
,p_css_classes=>'orange'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635545339632697828)
,p_theme_id=>101
,p_name=>'REGION_BG_DEEP_ORANGE'
,p_display_name=>'Deep Orange'
,p_display_sequence=>1
,p_css_classes=>'deep-orange'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635559058340700100)
,p_theme_id=>101
,p_name=>'REGION_BG_BROWN'
,p_display_name=>'Brown'
,p_display_sequence=>1
,p_css_classes=>'brown'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635559326015702082)
,p_theme_id=>101
,p_name=>'REGION_BG_GREY'
,p_display_name=>'Grey'
,p_display_sequence=>1
,p_css_classes=>'grey'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635559765115704090)
,p_theme_id=>101
,p_name=>'REGION_BG_BLUE_GREY'
,p_display_name=>'Blue Grey'
,p_display_sequence=>1
,p_css_classes=>'blue-grey'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635560666042712711)
,p_theme_id=>101
,p_name=>'LIGHTEN_5'
,p_display_name=>'Lighten 5'
,p_display_sequence=>1
,p_css_classes=>'lighten-5'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635561128687714368)
,p_theme_id=>101
,p_name=>'LIGHTEN_4'
,p_display_name=>'Lighten 4'
,p_display_sequence=>1
,p_css_classes=>'lighten-4'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635561435059716123)
,p_theme_id=>101
,p_name=>'LIGHTEN_3'
,p_display_name=>'Lighten 3'
,p_display_sequence=>1
,p_css_classes=>'lighten-3'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635561792760717516)
,p_theme_id=>101
,p_name=>'LIGHTEN_2'
,p_display_name=>'Lighten 2'
,p_display_sequence=>1
,p_css_classes=>'lighten-2'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635562036760718851)
,p_theme_id=>101
,p_name=>'LIGHTEN_1'
,p_display_name=>'Lighten 1'
,p_display_sequence=>1
,p_css_classes=>'lighten-1'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635562350280720811)
,p_theme_id=>101
,p_name=>'DARKEN_1'
,p_display_name=>'Darken 1'
,p_display_sequence=>1
,p_css_classes=>'darken-1'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635565070648722217)
,p_theme_id=>101
,p_name=>'DARKEN_2'
,p_display_name=>'Darken 2'
,p_display_sequence=>1
,p_css_classes=>'darken-2'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635565401719724466)
,p_theme_id=>101
,p_name=>'DARKEN_3'
,p_display_name=>'Darken 3'
,p_display_sequence=>1
,p_css_classes=>'darken-3'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635565662158725892)
,p_theme_id=>101
,p_name=>'DARKEN_4'
,p_display_name=>'Darken 4'
,p_display_sequence=>1
,p_css_classes=>'darken-4'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635565947245727383)
,p_theme_id=>101
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>1
,p_css_classes=>'accent-1'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635576246778728303)
,p_theme_id=>101
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>1
,p_css_classes=>'accent-2'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635576560606729656)
,p_theme_id=>101
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>1
,p_css_classes=>'accent-3'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635576839055730791)
,p_theme_id=>101
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>1
,p_css_classes=>'accent-4'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9652679727976294477)
,p_theme_id=>101
,p_name=>'WITH_HEADER'
,p_display_name=>'With Header'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9652079909139010806)
,p_css_classes=>'with-header'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9652721816156318387)
,p_theme_id=>101
,p_name=>'WITH_HEADER'
,p_display_name=>'With Header'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9652104318611059757)
,p_css_classes=>'with-header'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9654753538988502548)
,p_theme_id=>101
,p_name=>'CONTAINER'
,p_display_name=>'Container'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'container'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9654845091129677864)
,p_theme_id=>101
,p_name=>'WITH_HEADER'
,p_display_name=>'With Header'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9652148565941067451)
,p_css_classes=>'with-header'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9662078502203681982)
,p_theme_id=>101
,p_name=>'CONTAINER'
,p_display_name=>'Container'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_css_classes=>'main-container'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756265909954045679)
,p_theme_id=>101
,p_name=>'RED_TEXT'
,p_display_name=>'Red'
,p_display_sequence=>1
,p_css_classes=>'red-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756336166780049755)
,p_theme_id=>101
,p_name=>'PINK_TEXT'
,p_display_name=>'Pink'
,p_display_sequence=>1
,p_css_classes=>'pink-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756336526893058293)
,p_theme_id=>101
,p_name=>'PURPLE_TEXT'
,p_display_name=>'Purple'
,p_display_sequence=>1
,p_css_classes=>'purple-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756336877040060537)
,p_theme_id=>101
,p_name=>'DEEP_PURPLE_TEXT'
,p_display_name=>'Deep Purple'
,p_display_sequence=>1
,p_css_classes=>'deep-purple-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756337305727064984)
,p_theme_id=>101
,p_name=>'INDIGO_TEXT'
,p_display_name=>'Indigo'
,p_display_sequence=>1
,p_css_classes=>'indigo-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756337607591067819)
,p_theme_id=>101
,p_name=>'BLUE_TEXT'
,p_display_name=>'Blue'
,p_display_sequence=>1
,p_css_classes=>'blue-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756337821682070199)
,p_theme_id=>101
,p_name=>'LIGHT_BLUE_TEXT'
,p_display_name=>'Light Blue'
,p_display_sequence=>1
,p_css_classes=>'light-blue-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756338151424071643)
,p_theme_id=>101
,p_name=>'CYAN_TEXT'
,p_display_name=>'Cyan'
,p_display_sequence=>1
,p_css_classes=>'cyan-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756338446942073645)
,p_theme_id=>101
,p_name=>'TEAL_TEXT'
,p_display_name=>'Teal'
,p_display_sequence=>1
,p_css_classes=>'teal-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756338780918075117)
,p_theme_id=>101
,p_name=>'GREEN_TEXT'
,p_display_name=>'Green'
,p_display_sequence=>1
,p_css_classes=>'green-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756339071459078096)
,p_theme_id=>101
,p_name=>'LIGHT_GREEN_TEXT'
,p_display_name=>'Light Green'
,p_display_sequence=>1
,p_css_classes=>'light-green-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756339389527079416)
,p_theme_id=>101
,p_name=>'LIME_TEXT'
,p_display_name=>'Lime'
,p_display_sequence=>1
,p_css_classes=>'lime-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756339709272080928)
,p_theme_id=>101
,p_name=>'YELLOW_TEXT'
,p_display_name=>'Yellow'
,p_display_sequence=>1
,p_css_classes=>'yellow-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756340000680082810)
,p_theme_id=>101
,p_name=>'AMBER_TEXT'
,p_display_name=>'Amber'
,p_display_sequence=>1
,p_css_classes=>'amber-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756340229648084546)
,p_theme_id=>101
,p_name=>'ORANGE_TEXT'
,p_display_name=>'Orange'
,p_display_sequence=>1
,p_css_classes=>'orange-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756340540697086305)
,p_theme_id=>101
,p_name=>'DEEP_ORANGE_TEXT'
,p_display_name=>'Deep Orange'
,p_display_sequence=>1
,p_css_classes=>'deep-orange-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756340896069089011)
,p_theme_id=>101
,p_name=>'BROWN_TEXT'
,p_display_name=>'Brown'
,p_display_sequence=>1
,p_css_classes=>'brown-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756341209029090945)
,p_theme_id=>101
,p_name=>'GREY_TEXT'
,p_display_name=>'Grey'
,p_display_sequence=>1
,p_css_classes=>'grey-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756341441234093740)
,p_theme_id=>101
,p_name=>'BLUE_GREY_TEXT'
,p_display_name=>'Blue Grey'
,p_display_sequence=>1
,p_css_classes=>'blue-grey-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9760119826112905721)
,p_theme_id=>101
,p_name=>'MATERIALBOX'
,p_display_name=>'Materialbox'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'apex-materialbox'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11137318853986111903)
,p_theme_id=>101
,p_name=>'SIDE_NAVIGATION_FIXED'
,p_display_name=>'Side Navigation Fixed'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_css_classes=>'side-nav-fixed'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13154177193977872210)
,p_theme_id=>101
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9086526438265569983)
,p_css_classes=>'left'
,p_group_id=>wwv_flow_api.id(13154151598654866404)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13154188986097709553)
,p_theme_id=>101
,p_name=>'RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9086526438265569983)
,p_css_classes=>'right'
,p_group_id=>wwv_flow_api.id(13154151598654866404)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18930251392624107471)
,p_theme_id=>101
,p_name=>'BLACK'
,p_display_name=>'Black'
,p_display_sequence=>1
,p_css_classes=>'black-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19176696991362351484)
,p_theme_id=>101
,p_name=>'CLICK_TO_TOGGLE'
,p_display_name=>'Click to toggle'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_css_classes=>'click-to-toggle'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19176697340903351488)
,p_theme_id=>101
,p_name=>'LEFT'
,p_display_name=>'Fixed - Bottom Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_css_classes=>'fab-left'
,p_group_id=>wwv_flow_api.id(19177324499174518770)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19176697717590351490)
,p_theme_id=>101
,p_name=>'RIGHT'
,p_display_name=>'Fixed - Bottom Right'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_css_classes=>'fab-right'
,p_group_id=>wwv_flow_api.id(19177324499174518770)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19176718525120351491)
,p_theme_id=>101
,p_name=>'FIXED_ACTION_BUTTON_HORITONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_css_classes=>'horizontal'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19176886785080250948)
,p_theme_id=>101
,p_name=>'RAISED'
,p_display_name=>'Raised'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_css_classes=>'btn'
,p_group_id=>wwv_flow_api.id(8931979833521911829)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19176887802885253709)
,p_theme_id=>101
,p_name=>'FLOATING'
,p_display_name=>'Floating'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_css_classes=>'btn-floating'
,p_group_id=>wwv_flow_api.id(8931979833521911829)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19176994077141418779)
,p_theme_id=>101
,p_name=>'FLAT'
,p_display_name=>'Flat'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_css_classes=>'btn-flat'
,p_group_id=>wwv_flow_api.id(8931979833521911829)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19177461399624375043)
,p_theme_id=>101
,p_name=>'INSIDE_THE_PARENT'
,p_display_name=>'Inside the parent'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_css_classes=>'fab-absolute'
,p_group_id=>wwv_flow_api.id(19177324499174518770)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19178849483845536044)
,p_theme_id=>101
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_css_classes=>'btn-large'
,p_group_id=>wwv_flow_api.id(8931961413606910069)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19181369658935108794)
,p_theme_id=>101
,p_name=>'WAVE_DEFAULT'
,p_display_name=>'Default'
,p_display_sequence=>1
,p_css_classes=>'waves-effect'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19181717630108981927)
,p_theme_id=>101
,p_name=>'WAVE_NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_css_classes=>'wave-none'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19287997118003801152)
,p_theme_id=>101
,p_name=>'IMAGE_CIRCLE'
,p_display_name=>'Image Circle'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(19287996820552801147)
,p_css_classes=>'item-image-circle'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19287997503872801153)
,p_theme_id=>101
,p_name=>'IMAGE_RESPONSIVE'
,p_display_name=>'Image Responsive'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(19287996820552801147)
,p_css_classes=>'item-image-responsive'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19288356765697874957)
,p_theme_id=>101
,p_name=>'FADE_IN_EFFECT'
,p_display_name=>'Fade In Effect'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(19287996820552801147)
,p_css_classes=>'item-fade-in'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19326795318239882435)
,p_theme_id=>101
,p_name=>'ENABLE_SCROLLFIRE'
,p_display_name=>'Yes'
,p_display_sequence=>1
,p_css_classes=>'enable-scrollfire'
,p_group_id=>wwv_flow_api.id(19326809326865053501)
,p_template_types=>'REGION'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use the component "HTML Attributes" and add those attributes:',
'offset="500"',
'callback="apex.event.trigger(document, ''fadeInImage'');"'))
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19327254306644086977)
,p_theme_id=>101
,p_name=>'ENABLE_SCROLLFIRE'
,p_display_name=>'Yes'
,p_display_sequence=>1
,p_css_classes=>'enable-scrollfire'
,p_group_id=>wwv_flow_api.id(19327251606774082511)
,p_template_types=>'FIELD'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use the component "HTML Attributes" and add those attributes:',
'offset="500"',
'callback="apex.event.trigger(document, ''fadeInImage'');"'))
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19419222501732383552)
,p_theme_id=>101
,p_name=>'BUTTONS_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'buttons-left'
,p_group_id=>wwv_flow_api.id(19419020753447205005)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19419231564986219741)
,p_theme_id=>101
,p_name=>'BUTTONS_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>1
,p_css_classes=>'buttons-right'
,p_group_id=>wwv_flow_api.id(19419020753447205005)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19419232220196221850)
,p_theme_id=>101
,p_name=>'BUTTONS_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>1
,p_css_classes=>'buttons-center'
,p_group_id=>wwv_flow_api.id(19419020753447205005)
,p_template_types=>'REGION'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(18522660686601587220)
,p_build_option_name=>'DEV_ONLY'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(4652737644717162284)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(9085956626422111786)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
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
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','MATERIAL.APEX.STAGGERED.LIST'),'')
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
prompt --application/shared_components/plugins/dynamic_action/material_apex_fade_in_image
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(19287337250287536332)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'MATERIAL.APEX.FADE.IN.IMAGE'
,p_display_name=>'Material APEX - Fade In Image'
,p_category=>'MISC'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','MATERIAL.APEX.FADE.IN.IMAGE'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render_fade_in_image (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin )',
'return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_result apex_plugin.t_dynamic_action_render_result;',
'begin',
'    l_result.javascript_function := ''function(){Materialize.fadeInImage(this.affectedElements.selector);}'';',
'    ',
'    return l_result;        ',
'end render_fade_in_image;'))
,p_render_function=>'render_fade_in_image'
,p_standard_attributes=>'ITEM:JQUERY_SELECTOR:REQUIRED:ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
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
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','MATERIAL.APEX.TOAST'),'')
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
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(9085956427190111783)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Responsive'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>101
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(9086527455150599004)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(9086526438265569983)
,p_nav_list_template_options=>'#DEFAULT#:left'
,p_content_delivery_network=>'GOOGLE'
,p_include_legacy_javascript=>true
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(9087125438999588060)
,p_nav_bar_list_template_id=>wwv_flow_api.id(9087126745232589871)
,p_nav_bar_template_options=>'#DEFAULT#:center-logo:navbar-fixed'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Global Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207044247'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8709127202455679708)
,p_plug_name=>'{hamburger menu}'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'<a href="#" id="menu-trigger" class="button-collapse" data-activates="app-sidenav"><i class="material-icons left">menu</i></a>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9086578726475686919)
,p_plug_name=>'Scrollspy'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>999999
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_list_id=>wwv_flow_api.id(9086579153487694715)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(9408225381176077889)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT 	1',
'FROM 	apex_application_page_regions apr ',
'JOIN 	apex_appl_template_options ato',
'	ON 	ato.region_template_id	= apr.template_id',
'WHERE 	apr.application_id 		= :APP_ID',
'AND 	apr.page_id 			= :APP_PAGE_ID',
'AND		ato.name 				= ''SCROLLSPY''',
'AND	apr.region_template_options like ''%:'' || ato.css_classes || '':%'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087173047546049126)
,p_plug_name=>'{footer}'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9650117990381704503)
,p_plug_display_sequence=>1000019
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623360142989080165)
,p_plug_name=>'{item container}'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9623360349036080167)
,p_name=>'P0_BODY_COLUMN_CLASSES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9623360142989080165)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_exists number;',
'BEGIN',
'    SELECT 	distinct 1',
'    INTO    l_exists',
'    FROM 	apex_application_page_regions apr ',
'    JOIN 	apex_appl_template_options ato',
'        ON 	ato.region_template_id	= apr.template_id',
'    WHERE 	apr.application_id 		= :APP_ID',
'    AND 	apr.page_id 			= :APP_PAGE_ID',
'    AND		ato.name 				= ''SCROLLSPY''',
'    AND	    apr.region_template_options like ''%:'' || ato.css_classes || '':%'';',
'',
'    return ''col s12 m9 l10'';',
'EXCEPTION WHEN no_data_found THEN',
'    return null;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'About'
,p_alias=>'ABOUT'
,p_page_mode=>'NORMAL'
,p_step_title=>'About'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086811349776676666)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045855'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9086542651225480335)
,p_plug_name=>'About Material Design'
,p_region_template_options=>'#DEFAULT#:flow-text-region:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Created and designed by Google, Material Design is a design language that combines the classic principles of successful design',
'along with innovation and technology. Google''s goal is to develop a system of design that allows for a unified user experience across all their products on any platform.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9086678557482209655)
,p_plug_name=>'Material Design'
,p_region_template_options=>'#DEFAULT#:hide-title:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h3 class="center">A modern responsive front-end framework for APEX</h3>',
'',
'<div class="center promo-i">',
'    <i class="xlarge material-icons">desktop_windows</i>',
'    <i class="xlarge material-icons">laptop_windows</i>',
'    <i class="xlarge material-icons">tablet</i>',
'    <i class="xlarge material-icons">smartphone</i>',
'</div>',
'',
'<h3 class="center">Material Design simplifies life for developers and the users they serve.</h3>'))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623356522980080129)
,p_plug_name=>'Speeds up development'
,p_parent_plug_id=>wwv_flow_api.id(9086678557482209655)
,p_icon_css_classes=>'flash_on'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9635259506914266756)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_source=>'We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623356688446080130)
,p_plug_name=>'User Experience Focused'
,p_parent_plug_id=>wwv_flow_api.id(9086678557482209655)
,p_icon_css_classes=>'group'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9635259506914266756)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allo'
||'w for a more unified user experience.',
''))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623356768356080131)
,p_plug_name=>'Easy to work with'
,p_parent_plug_id=>wwv_flow_api.id(9086678557482209655)
,p_icon_css_classes=>'settings'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9635259506914266756)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_source=>'We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Material APEX.'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623356884564080132)
,p_plug_name=>'Principles'
,p_region_template_options=>'#DEFAULT#:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623356940124080133)
,p_plug_name=>'Material is the metaphor'
,p_parent_plug_id=>wwv_flow_api.id(9623356884564080132)
,p_icon_css_classes=>'now_widgets'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9635259506914266756)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_source=>'The metaphor of material defines the relationship between space and motion. The idea is that the technology is inspired by paper and ink and is utilized to facilitate creativity and innovation. Surfaces and edges provide familiar visual cues that all'
||'ow users to quickly understand the technology beyond the physical world.'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623357065925080134)
,p_plug_name=>'Bold, graphic, intentional'
,p_parent_plug_id=>wwv_flow_api.id(9623356884564080132)
,p_icon_css_classes=>'my_library_add'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9635259506914266756)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_source=>'Elements and components such as grids, typography, color, and imagery are not only visually pleasing, but also create a sense of hierarchy, meaning, and focus. Emphasis on different actions and components create a visual guide for users.'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623357181659080135)
,p_plug_name=>'Motion provides meaning'
,p_parent_plug_id=>wwv_flow_api.id(9623356884564080132)
,p_icon_css_classes=>'settings_remote'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9635259506914266756)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_source=>'Motion allows the user to draw a parallel between what they see on the screen and in real life. By providing both feedback and familiarity, this allows the user to fully immerse him or herself into unfamiliar technology. Motion contains consistency a'
||'nd continuity in addition to giving users additional subconscious information about objects and transformations.'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Color'
,p_alias=>'COLOR'
,p_page_mode=>'NORMAL'
,p_step_title=>'Color'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810736270672784)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125204640'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087129532464964656)
,p_plug_name=>'Usage'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Here is a color palette based on the material design base colors. Each of these colors is defined with a base color template option and an optional lighten or darken template option.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087137655855084911)
,p_plug_name=>'{Card Panel}'
,p_parent_plug_id=>wwv_flow_api.id(9087129532464964656)
,p_region_template_options=>'#DEFAULT#:blue:lighten-3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This is a card panel with a blue lighten-3 background color.'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087138045250091280)
,p_plug_name=>'{Card Panel}'
,p_parent_plug_id=>wwv_flow_api.id(9087129532464964656)
,p_region_template_options=>'#DEFAULT#:indigo-text'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This is a card panel with indigo text color'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087144335918239997)
,p_plug_name=>'Color Palette'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row dynamic-color">',
'',
'<div class="col s12 m6 l4">',
'    <div class="red lighten-5">#ffebee red lighten-5</div>',
'    <div class="red lighten-4">#ffcdd2 red lighten-4</div>',
'    <div class="red lighten-3">#ef9a9a red lighten-3</div>',
'    <div class="red lighten-2">#e57373 red lighten-2</div>',
'    <div class="red lighten-1">#ef5350 red lighten-1</div>',
'    <div class="red">#f44336 red</div>',
'    <div class="red darken-1">#e53935 red darken-1</div>',
'    <div class="red darken-2">#d32f2f red darken-2</div>',
'    <div class="red darken-3">#c62828 red darken-3</div>',
'    <div class="red darken-4">#b71c1c red darken-4</div>',
'    <div class="red accent-1">#ff8a80 red accent-1</div>',
'    <div class="red accent-2">#ff5252 red accent-2</div>',
'    <div class="red accent-3">#ff1744 red accent-3</div>',
'    <div class="red accent-4">#d50000 red accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="pink lighten-5">#fce4ec pink lighten-5</div>',
'    <div class="pink lighten-4">#f8bbd0 pink lighten-4</div>',
'    <div class="pink lighten-3">#f48fb1 pink lighten-3</div>',
'    <div class="pink lighten-2">#f06292 pink lighten-2</div>',
'    <div class="pink lighten-1">#ec407a pink lighten-1</div>',
'    <div class="pink">#e91e63 pink</div>',
'    <div class="pink darken-1">#d81b60 pink darken-1</div>',
'    <div class="pink darken-2">#c2185b pink darken-2</div>',
'    <div class="pink darken-3">#ad1457 pink darken-3</div>',
'    <div class="pink darken-4">#880e4f pink darken-4</div>',
'    <div class="pink accent-1">#ff80ab pink accent-1</div>',
'    <div class="pink accent-2">#ff4081 pink accent-2</div>',
'    <div class="pink accent-3">#f50057 pink accent-3</div>',
'    <div class="pink accent-4">#c51162 pink accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="purple lighten-5">#f3e5f5 purple lighten-5</div>',
'    <div class="purple lighten-4">#e1bee7 purple lighten-4</div>',
'    <div class="purple lighten-3">#ce93d8 purple lighten-3</div>',
'    <div class="purple lighten-2">#ba68c8 purple lighten-2</div>',
'    <div class="purple lighten-1">#ab47bc purple lighten-1</div>',
'    <div class="purple">#9c27b0 purple</div>',
'    <div class="purple darken-1">#8e24aa purple darken-1</div>',
'    <div class="purple darken-2">#7b1fa2 purple darken-2</div>',
'    <div class="purple darken-3">#6a1b9a purple darken-3</div>',
'    <div class="purple darken-4">#4a148c purple darken-4</div>',
'    <div class="purple accent-1">#ea80fc purple accent-1</div>',
'    <div class="purple accent-2">#e040fb purple accent-2</div>',
'    <div class="purple accent-3">#d500f9 purple accent-3</div>',
'    <div class="purple accent-4">#aa00ff purple accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="deep-purple lighten-5">#ede7f6 deep-purple lighten-5</div>',
'    <div class="deep-purple lighten-4">#d1c4e9 deep-purple lighten-4</div>',
'    <div class="deep-purple lighten-3">#b39ddb deep-purple lighten-3</div>',
'    <div class="deep-purple lighten-2">#9575cd deep-purple lighten-2</div>',
'    <div class="deep-purple lighten-1">#7e57c2 deep-purple lighten-1</div>',
'    <div class="deep-purple">#673ab7 deep-purple</div>',
'    <div class="deep-purple darken-1">#5e35b1 deep-purple darken-1</div>',
'    <div class="deep-purple darken-2">#512da8 deep-purple darken-2</div>',
'    <div class="deep-purple darken-3">#4527a0 deep-purple darken-3</div>',
'    <div class="deep-purple darken-4">#311b92 deep-purple darken-4</div>',
'    <div class="deep-purple accent-1">#b388ff deep-purple accent-1</div>',
'    <div class="deep-purple accent-2">#7c4dff deep-purple accent-2</div>',
'    <div class="deep-purple accent-3">#651fff deep-purple accent-3</div>',
'    <div class="deep-purple accent-4">#6200ea deep-purple accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="indigo lighten-5">#e8eaf6 indigo lighten-5</div>',
'    <div class="indigo lighten-4">#c5cae9 indigo lighten-4</div>',
'    <div class="indigo lighten-3">#9fa8da indigo lighten-3</div>',
'    <div class="indigo lighten-2">#7986cb indigo lighten-2</div>',
'    <div class="indigo lighten-1">#5c6bc0 indigo lighten-1</div>',
'    <div class="indigo">#3f51b5 indigo</div>',
'    <div class="indigo darken-1">#3949ab indigo darken-1</div>',
'    <div class="indigo darken-2">#303f9f indigo darken-2</div>',
'    <div class="indigo darken-3">#283593 indigo darken-3</div>',
'    <div class="indigo darken-4">#1a237e indigo darken-4</div>',
'    <div class="indigo accent-1">#8c9eff indigo accent-1</div>',
'    <div class="indigo accent-2">#536dfe indigo accent-2</div>',
'    <div class="indigo accent-3">#3d5afe indigo accent-3</div>',
'    <div class="indigo accent-4">#304ffe indigo accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="blue lighten-5">#e3f2fd blue lighten-5</div>',
'    <div class="blue lighten-4">#bbdefb blue lighten-4</div>',
'    <div class="blue lighten-3">#90caf9 blue lighten-3</div>',
'    <div class="blue lighten-2">#64b5f6 blue lighten-2</div>',
'    <div class="blue lighten-1">#42a5f5 blue lighten-1</div>',
'    <div class="blue">#2196f3 blue</div>',
'    <div class="blue darken-1">#1e88e5 blue darken-1</div>',
'    <div class="blue darken-2">#1976d2 blue darken-2</div>',
'    <div class="blue darken-3">#1565c0 blue darken-3</div>',
'    <div class="blue darken-4">#0d47a1 blue darken-4</div>',
'    <div class="blue accent-1">#82b1ff blue accent-1</div>',
'    <div class="blue accent-2">#448aff blue accent-2</div>',
'    <div class="blue accent-3">#2979ff blue accent-3</div>',
'    <div class="blue accent-4">#2962ff blue accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="light-blue lighten-5">#e1f5fe light-blue lighten-5</div>',
'    <div class="light-blue lighten-4">#b3e5fc light-blue lighten-4</div>',
'    <div class="light-blue lighten-3">#81d4fa light-blue lighten-3</div>',
'    <div class="light-blue lighten-2">#4fc3f7 light-blue lighten-2</div>',
'    <div class="light-blue lighten-1">#29b6f6 light-blue lighten-1</div>',
'    <div class="light-blue">#03a9f4 light-blue</div>',
'    <div class="light-blue darken-1">#039be5 light-blue darken-1</div>',
'    <div class="light-blue darken-2">#0288d1 light-blue darken-2</div>',
'    <div class="light-blue darken-3">#0277bd light-blue darken-3</div>',
'    <div class="light-blue darken-4">#01579b light-blue darken-4</div>',
'    <div class="light-blue accent-1">#80d8ff light-blue accent-1</div>',
'    <div class="light-blue accent-2">#40c4ff light-blue accent-2</div>',
'    <div class="light-blue accent-3">#00b0ff light-blue accent-3</div>',
'    <div class="light-blue accent-4">#0091ea light-blue accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="cyan lighten-5">#e0f7fa cyan lighten-5</div>',
'    <div class="cyan lighten-4">#b2ebf2 cyan lighten-4</div>',
'    <div class="cyan lighten-3">#80deea cyan lighten-3</div>',
'    <div class="cyan lighten-2">#4dd0e1 cyan lighten-2</div>',
'    <div class="cyan lighten-1">#26c6da cyan lighten-1</div>',
'    <div class="cyan">#00bcd4 cyan</div>',
'    <div class="cyan darken-1">#00acc1 cyan darken-1</div>',
'    <div class="cyan darken-2">#0097a7 cyan darken-2</div>',
'    <div class="cyan darken-3">#00838f cyan darken-3</div>',
'    <div class="cyan darken-4">#006064 cyan darken-4</div>',
'    <div class="cyan accent-1">#84ffff cyan accent-1</div>',
'    <div class="cyan accent-2">#18ffff cyan accent-2</div>',
'    <div class="cyan accent-3">#00e5ff cyan accent-3</div>',
'    <div class="cyan accent-4">#00b8d4 cyan accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="teal lighten-5">#e0f2f1 teal lighten-5</div>',
'    <div class="teal lighten-4">#b2dfdb teal lighten-4</div>',
'    <div class="teal lighten-3">#80cbc4 teal lighten-3</div>',
'    <div class="teal lighten-2">#4db6ac teal lighten-2</div>',
'    <div class="teal lighten-1">#26a69a teal lighten-1</div>',
'    <div class="teal">#009688 teal</div>',
'    <div class="teal darken-1">#00897b teal darken-1</div>',
'    <div class="teal darken-2">#00796b teal darken-2</div>',
'    <div class="teal darken-3">#00695c teal darken-3</div>',
'    <div class="teal darken-4">#004d40 teal darken-4</div>',
'    <div class="teal accent-1">#a7ffeb teal accent-1</div>',
'    <div class="teal accent-2">#64ffda teal accent-2</div>',
'    <div class="teal accent-3">#1de9b6 teal accent-3</div>',
'    <div class="teal accent-4">#00bfa5 teal accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="green lighten-5">#e8f5e9 green lighten-5</div>',
'    <div class="green lighten-4">#c8e6c9 green lighten-4</div>',
'    <div class="green lighten-3">#a5d6a7 green lighten-3</div>',
'    <div class="green lighten-2">#81c784 green lighten-2</div>',
'    <div class="green lighten-1">#66bb6a green lighten-1</div>',
'    <div class="green">#4caf50 green</div>',
'    <div class="green darken-1">#43a047 green darken-1</div>',
'    <div class="green darken-2">#388e3c green darken-2</div>',
'    <div class="green darken-3">#2e7d32 green darken-3</div>',
'    <div class="green darken-4">#1b5e20 green darken-4</div>',
'    <div class="green accent-1">#b9f6ca green accent-1</div>',
'    <div class="green accent-2">#69f0ae green accent-2</div>',
'    <div class="green accent-3">#00e676 green accent-3</div>',
'    <div class="green accent-4">#00c853 green accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="light-green lighten-5">#f1f8e9 light-green lighten-5</div>',
'    <div class="light-green lighten-4">#dcedc8 light-green lighten-4</div>',
'    <div class="light-green lighten-3">#c5e1a5 light-green lighten-3</div>',
'    <div class="light-green lighten-2">#aed581 light-green lighten-2</div>',
'    <div class="light-green lighten-1">#9ccc65 light-green lighten-1</div>',
'    <div class="light-green">#8bc34a light-green</div>',
'    <div class="light-green darken-1">#7cb342 light-green darken-1</div>',
'    <div class="light-green darken-2">#689f38 light-green darken-2</div>',
'    <div class="light-green darken-3">#558b2f light-green darken-3</div>',
'    <div class="light-green darken-4">#33691e light-green darken-4</div>',
'    <div class="light-green accent-1">#ccff90 light-green accent-1</div>',
'    <div class="light-green accent-2">#b2ff59 light-green accent-2</div>',
'    <div class="light-green accent-3">#76ff03 light-green accent-3</div>',
'    <div class="light-green accent-4">#64dd17 light-green accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="lime lighten-5">#f9fbe7 lime lighten-5</div>',
'    <div class="lime lighten-4">#f0f4c3 lime lighten-4</div>',
'    <div class="lime lighten-3">#e6ee9c lime lighten-3</div>',
'    <div class="lime lighten-2">#dce775 lime lighten-2</div>',
'    <div class="lime lighten-1">#d4e157 lime lighten-1</div>',
'    <div class="lime">#cddc39 lime</div>',
'    <div class="lime darken-1">#c0ca33 lime darken-1</div>',
'    <div class="lime darken-2">#afb42b lime darken-2</div>',
'    <div class="lime darken-3">#9e9d24 lime darken-3</div>',
'    <div class="lime darken-4">#827717 lime darken-4</div>',
'    <div class="lime accent-1">#f4ff81 lime accent-1</div>',
'    <div class="lime accent-2">#eeff41 lime accent-2</div>',
'    <div class="lime accent-3">#c6ff00 lime accent-3</div>',
'    <div class="lime accent-4">#aeea00 lime accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="yellow lighten-5">#fffde7 yellow lighten-5</div>',
'    <div class="yellow lighten-4">#fff9c4 yellow lighten-4</div>',
'    <div class="yellow lighten-3">#fff59d yellow lighten-3</div>',
'    <div class="yellow lighten-2">#fff176 yellow lighten-2</div>',
'    <div class="yellow lighten-1">#ffee58 yellow lighten-1</div>',
'    <div class="yellow">#ffeb3b yellow</div>',
'    <div class="yellow darken-1">#fdd835 yellow darken-1</div>',
'    <div class="yellow darken-2">#fbc02d yellow darken-2</div>',
'    <div class="yellow darken-3">#f9a825 yellow darken-3</div>',
'    <div class="yellow darken-4">#f57f17 yellow darken-4</div>',
'    <div class="yellow accent-1">#ffff8d yellow accent-1</div>',
'    <div class="yellow accent-2">#ffff00 yellow accent-2</div>',
'    <div class="yellow accent-3">#ffea00 yellow accent-3</div>',
'    <div class="yellow accent-4">#ffd600 yellow accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="amber lighten-5">#fff8e1 amber lighten-5</div>',
'    <div class="amber lighten-4">#ffecb3 amber lighten-4</div>',
'    <div class="amber lighten-3">#ffe082 amber lighten-3</div>',
'    <div class="amber lighten-2">#ffd54f amber lighten-2</div>',
'    <div class="amber lighten-1">#ffca28 amber lighten-1</div>',
'    <div class="amber">#ffc107 amber</div>',
'    <div class="amber darken-1">#ffb300 amber darken-1</div>',
'    <div class="amber darken-2">#ffa000 amber darken-2</div>',
'    <div class="amber darken-3">#ff8f00 amber darken-3</div>',
'    <div class="amber darken-4">#ff6f00 amber darken-4</div>',
'    <div class="amber accent-1">#ffe57f amber accent-1</div>',
'    <div class="amber accent-2">#ffd740 amber accent-2</div>',
'    <div class="amber accent-3">#ffc400 amber accent-3</div>',
'    <div class="amber accent-4">#ffab00 amber accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="orange lighten-5">#fff3e0 orange lighten-5</div>',
'    <div class="orange lighten-4">#ffe0b2 orange lighten-4</div>',
'    <div class="orange lighten-3">#ffcc80 orange lighten-3</div>',
'    <div class="orange lighten-2">#ffb74d orange lighten-2</div>',
'    <div class="orange lighten-1">#ffa726 orange lighten-1</div>',
'    <div class="orange">#ff9800 orange</div>',
'    <div class="orange darken-1">#fb8c00 orange darken-1</div>',
'    <div class="orange darken-2">#f57c00 orange darken-2</div>',
'    <div class="orange darken-3">#ef6c00 orange darken-3</div>',
'    <div class="orange darken-4">#e65100 orange darken-4</div>',
'    <div class="orange accent-1">#ffd180 orange accent-1</div>',
'    <div class="orange accent-2">#ffab40 orange accent-2</div>',
'    <div class="orange accent-3">#ff9100 orange accent-3</div>',
'    <div class="orange accent-4">#ff6d00 orange accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="deep-orange lighten-5">#fbe9e7 deep-orange lighten-5</div>',
'    <div class="deep-orange lighten-4">#ffccbc deep-orange lighten-4</div>',
'    <div class="deep-orange lighten-3">#ffab91 deep-orange lighten-3</div>',
'    <div class="deep-orange lighten-2">#ff8a65 deep-orange lighten-2</div>',
'    <div class="deep-orange lighten-1">#ff7043 deep-orange lighten-1</div>',
'    <div class="deep-orange">#ff5722 deep-orange</div>',
'    <div class="deep-orange darken-1">#f4511e deep-orange darken-1</div>',
'    <div class="deep-orange darken-2">#e64a19 deep-orange darken-2</div>',
'    <div class="deep-orange darken-3">#d84315 deep-orange darken-3</div>',
'    <div class="deep-orange darken-4">#bf360c deep-orange darken-4</div>',
'    <div class="deep-orange accent-1">#ff9e80 deep-orange accent-1</div>',
'    <div class="deep-orange accent-2">#ff6e40 deep-orange accent-2</div>',
'    <div class="deep-orange accent-3">#ff3d00 deep-orange accent-3</div>',
'    <div class="deep-orange accent-4">#dd2c00 deep-orange accent-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="brown lighten-5">#efebe9 brown lighten-5</div>',
'    <div class="brown lighten-4">#d7ccc8 brown lighten-4</div>',
'    <div class="brown lighten-3">#bcaaa4 brown lighten-3</div>',
'    <div class="brown lighten-2">#a1887f brown lighten-2</div>',
'    <div class="brown lighten-1">#8d6e63 brown lighten-1</div>',
'    <div class="brown">#795548 brown</div>',
'    <div class="brown darken-1">#6d4c41 brown darken-1</div>',
'    <div class="brown darken-2">#5d4037 brown darken-2</div>',
'    <div class="brown darken-3">#4e342e brown darken-3</div>',
'    <div class="brown darken-4">#3e2723 brown darken-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="grey lighten-5">#fafafa grey lighten-5</div>',
'    <div class="grey lighten-4">#f5f5f5 grey lighten-4</div>',
'    <div class="grey lighten-3">#eeeeee grey lighten-3</div>',
'    <div class="grey lighten-2">#e0e0e0 grey lighten-2</div>',
'    <div class="grey lighten-1">#bdbdbd grey lighten-1</div>',
'    <div class="grey">#9e9e9e grey</div>',
'    <div class="grey darken-1">#757575 grey darken-1</div>',
'    <div class="grey darken-2">#616161 grey darken-2</div>',
'    <div class="grey darken-3">#424242 grey darken-3</div>',
'    <div class="grey darken-4">#212121 grey darken-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="blue-grey lighten-5">#eceff1 blue-grey lighten-5</div>',
'    <div class="blue-grey lighten-4">#cfd8dc blue-grey lighten-4</div>',
'    <div class="blue-grey lighten-3">#b0bec5 blue-grey lighten-3</div>',
'    <div class="blue-grey lighten-2">#90a4ae blue-grey lighten-2</div>',
'    <div class="blue-grey lighten-1">#78909c blue-grey lighten-1</div>',
'    <div class="blue-grey">#607d8b blue-grey</div>',
'    <div class="blue-grey darken-1">#546e7a blue-grey darken-1</div>',
'    <div class="blue-grey darken-2">#455a64 blue-grey darken-2</div>',
'    <div class="blue-grey darken-3">#37474f blue-grey darken-3</div>',
'    <div class="blue-grey darken-4">#263238 blue-grey darken-4</div>',
'</div>',
'',
'<div class="col s12 m6 l4">',
'    <div class="black" style="color: rgba(255, 255, 255, 0.901961);">#000000 black</div>',
'    <div class="white">#ffffff white</div>',
'    <div class="transparent">N/A transparent</div>',
'</div>',
'',
'</div>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9760165881668006835)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9623360693150080170)
,p_name=>'P10_DOC2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9760165881668006835)
,p_prompt=>'Template Options - Text'
,p_source=>'&PATH.img/docs-colors-2.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Choose from ''Text Color''. Applies for any region or button.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9760166216471006837)
,p_name=>'P10_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9760165881668006835)
,p_prompt=>'Template Options - Background'
,p_source=>'&PATH.img/docs-colors-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Choose from ''Background Color'' and ''Background Modifier''. Applies for any region or button.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Grid'
,p_alias=>'GRID'
,p_page_mode=>'NORMAL'
,p_step_title=>'Grid'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810736270672784)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125204727'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137641027978979084)
,p_plug_name=>'Grid'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>We are using a standard 12 column fluid responsive grid system.</p>',
'',
'<p>The grid helps you layout your page in an ordered, easy fashion.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137641098991979085)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>The container class is not strictly part of the grid but is important in laying out content. It allows you to center your page content. The container class is set to ~70% of the window width. It helps you center and contain your page content. We u'
||'se the container to contain our body content.</p>',
'',
'<p>Try the button below to see what the page looks like without containers</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137641550237979089)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(8137641098991979085)
,p_region_template_options=>'#DEFAULT#:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137641987126979094)
,p_plug_name=>'Introduction'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Take a look at this section to quickly understand how the grid works!</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137642092237979095)
,p_plug_name=>'12 Columns'
,p_parent_plug_id=>wwv_flow_api.id(8137641987126979094)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Our standard grid has 12 columns.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137642218344979096)
,p_plug_name=>'1'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'1'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137642282725979097)
,p_plug_name=>'2'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'2'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137642405475979098)
,p_plug_name=>'6'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'6'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137642507489979099)
,p_plug_name=>'7'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'7'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137642625550979100)
,p_plug_name=>'3'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'3'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137642660596979101)
,p_plug_name=>'5'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'5'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137642780470979102)
,p_plug_name=>'4'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'4'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137642922394979103)
,p_plug_name=>'8'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'8'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137642968369979104)
,p_plug_name=>'9'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'9'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137643114578979105)
,p_plug_name=>'10'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'10'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137643169752979106)
,p_plug_name=>'11'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'11'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137643303323979107)
,p_plug_name=>'12'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'12'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137643514960979109)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(8137642092237979095)
,p_region_template_options=>'#DEFAULT#:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213800886751620763)
,p_plug_name=>'Columns live inside Rows'
,p_parent_plug_id=>wwv_flow_api.id(8137641987126979094)
,p_region_template_options=>'#DEFAULT#:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Remember when you are creating your layout that all columns must be contained inside a row and that you must add the col class to your inner divs to make them into columns.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213801057020620764)
,p_plug_name=>'This div is 12-columns wide on all screen sizes'
,p_parent_plug_id=>wwv_flow_api.id(8213800886751620763)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This div is 12-columns wide on all screen sizes'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213801063397620765)
,p_plug_name=>'6-columns (one-half)'
,p_parent_plug_id=>wwv_flow_api.id(8213800886751620763)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_css_classes=>'s6'
,p_plug_display_point=>'BODY'
,p_plug_source=>'6-columns (one-half)'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213801168730620766)
,p_plug_name=>'6-columns (one-half)'
,p_parent_plug_id=>wwv_flow_api.id(8213800886751620763)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'s6'
,p_plug_display_point=>'BODY'
,p_plug_source=>'6-columns (one-half)'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213801343984620767)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(8213800886751620763)
,p_region_template_options=>'#DEFAULT#:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213801699395620771)
,p_plug_name=>'Offsets'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>To offset, simply add offset-s2 to the class where s signifies the screen class-prefix (s = small, m = medium, l = large) and the number after is the number of columns you want to offset by.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213801945535620773)
,p_plug_name=>'This div is 12-columns wide on all screen sizes'
,p_parent_plug_id=>wwv_flow_api.id(8213801699395620771)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This div is 12-columns wide on all screen sizes'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213801970278620774)
,p_plug_name=>'6-columns (offset-by-6)'
,p_parent_plug_id=>wwv_flow_api.id(8213801699395620771)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>6
,p_plug_grid_column_css_classes=>'s6 offset-s6'
,p_plug_display_column=>7
,p_plug_display_point=>'BODY'
,p_plug_source=>'6-columns (offset-by-6)'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213802116398620775)
,p_plug_name=>'Creating Responsive Layouts'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Above we showed you how to layout elements using our grid system. Now we''ll show you how to design your layouts so that they look great on all screen sizes.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8213802209215620776)
,p_name=>'Screen Sizes'
,p_parent_plug_id=>wwv_flow_api.id(8213802116398620775)
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#:hoverable'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ''Class Prefix'' as "TYPE"',
'        , ''.s''         as "Mobile Devices <= 600px"',
'        , ''.m''         as "Tablet Devices <= 992px"',
'        , ''.l''         as "Desktop Devices >= 992px"',
'FROM    dual',
'',
'UNION ALL',
'',
'SELECT  ''Container Width'' as "TYPE"',
'        , ''85%''         as "Mobile Devices <= 600px"',
'        , ''85%''         as "Tablet Devices <= 992px"',
'        , ''70%''         as "Desktop Devices >= 992px"',
'FROM    dual',
'',
'UNION ALL',
'',
'SELECT  ''Number of Columns'' as "TYPE"',
'        , ''12''         as "Mobile Devices <= 600px"',
'        , ''12''         as "Tablet Devices <= 992px"',
'        , ''12''         as "Desktop Devices >= 992px"',
'FROM    dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9090634527809844626)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8213802675792620781)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<strong>#TYPE#</strong>'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8213802376828620778)
,p_query_column_id=>2
,p_column_alias=>'Mobile Devices <= 600px'
,p_column_display_sequence=>2
,p_column_heading=>'Mobile devices &lt;= 600px'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8213802480586620779)
,p_query_column_id=>3
,p_column_alias=>'Tablet Devices <= 992px'
,p_column_display_sequence=>3
,p_column_heading=>'Tablet devices &lt;= 992px'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8213802596862620780)
,p_query_column_id=>4
,p_column_alias=>'Desktop Devices >= 992px'
,p_column_display_sequence=>4
,p_column_heading=>'Desktop devices &gt;= 992px'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213802856790620782)
,p_plug_name=>'Adding Responsiveness'
,p_parent_plug_id=>wwv_flow_api.id(8213802116398620775)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>In the previous examples, we only defined the size for small screens using "col s12". This is fine if we want a fixed layout since the rules propogate upwards. By just saying s12, we are essentially saying "col s12 m12 l12". But by explicitly defi'
||'ning the size we can make our website more responsive.</p>',
'',
'<p>3 key things to know:<p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213802939835620783)
,p_plug_name=>'I am always full-width (col s12)'
,p_parent_plug_id=>wwv_flow_api.id(8213802856790620782)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'I am always full-width (col s12)'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213803048390620784)
,p_plug_name=>'I am full-width on mobile (col s12 m6)'
,p_parent_plug_id=>wwv_flow_api.id(8213802856790620782)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'m6'
,p_plug_display_point=>'BODY'
,p_plug_source=>'I am full-width on mobile (col s12 m6)'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8709127366219679709)
,p_plug_name=>'1'
,p_parent_plug_id=>wwv_flow_api.id(8213802856790620782)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>1) On a small screen, every component defaults to 12 columns (full width). This can be overridden by setting a "s1" to "s12" in the "Column CSS Classes" attribute.<p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8709127476120679710)
,p_plug_name=>'2'
,p_parent_plug_id=>wwv_flow_api.id(8213802856790620782)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>2) The APEX "Column" and "Column Span" options represent a medium screen. This is a choice we''ve made for better responsive flexibility. Keep on reading to understand why.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8709127570431679711)
,p_plug_name=>'3'
,p_parent_plug_id=>wwv_flow_api.id(8213802856790620782)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>3) If you need to have control over a large screen, you can set "l1" to "l12" in the "Column CSS Classes" attribute of any element.<p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213803124823620785)
,p_plug_name=>'More Responsive Grid Examples'
,p_parent_plug_id=>wwv_flow_api.id(8213802116398620775)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213803201011620786)
,p_plug_name=>'s12'
,p_parent_plug_id=>wwv_flow_api.id(8213803124823620785)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'s12'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213803305335620787)
,p_plug_name=>'s12 m4 l2'
,p_parent_plug_id=>wwv_flow_api.id(8213803124823620785)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>4
,p_plug_grid_column_css_classes=>'l2'
,p_plug_display_point=>'BODY'
,p_plug_source=>'s12 m4 l2'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213803406633620788)
,p_plug_name=>'s12 m4 l8'
,p_parent_plug_id=>wwv_flow_api.id(8213803124823620785)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_grid_column_css_classes=>'l8'
,p_plug_display_point=>'BODY'
,p_plug_source=>'s12 m4 l8'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213803550668620789)
,p_plug_name=>'s12 m4 l2'
,p_parent_plug_id=>wwv_flow_api.id(8213803124823620785)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_grid_column_css_classes=>'l2'
,p_plug_display_point=>'BODY'
,p_plug_source=>'s12 m4 l2'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213803570115620790)
,p_plug_name=>'s12 m6 l3'
,p_parent_plug_id=>wwv_flow_api.id(8213803124823620785)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_css_classes=>'m6 l3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'s12 m6 l3'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213803737366620791)
,p_plug_name=>'s12 m6 l3'
,p_parent_plug_id=>wwv_flow_api.id(8213803124823620785)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'m6 l3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'s12 m6 l3'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213803819784620792)
,p_plug_name=>'s12 m6 l3'
,p_parent_plug_id=>wwv_flow_api.id(8213803124823620785)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'m6 l3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'s12 m6 l3'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213803918199620793)
,p_plug_name=>'s12 m6 l3'
,p_parent_plug_id=>wwv_flow_api.id(8213803124823620785)
,p_region_template_options=>'#DEFAULT#:center-align:red:lighten-1:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'m6 l3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'s12 m6 l3'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8137641182571979086)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8137641098991979085)
,p_button_name=>'TOGGLE_CONTAINER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Toggle Container'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8137641603031979090)
,p_name=>'P11_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8137641550237979089)
,p_prompt=>'Page with Container (Default)'
,p_source=>'&PATH.img/docs-grid-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Pages are set with a container by default.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8137641687394979091)
,p_name=>'P11_DOC2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8137641550237979089)
,p_prompt=>'Page with no Container'
,p_source=>'&PATH.img/docs-grid-2.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'You can remove the page container.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8137641822570979092)
,p_name=>'P11_DOC3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8137641550237979089)
,p_prompt=>'Region with Container'
,p_source=>'&PATH.img/docs-grid-3.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Alternatively, you can set individual regions to have a container'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8137643610320979110)
,p_name=>'P11_DOC4'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8137643514960979109)
,p_prompt=>'Grid Example 1'
,p_source=>'&PATH.img/docs-grid-4.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Here''s the first column of that row.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8137643703972979111)
,p_name=>'P11_DOC5'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8137643514960979109)
,p_prompt=>'Grid Example 2'
,p_source=>'&PATH.img/docs-grid-5.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Here''s the 11 other columns of that row.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8213801421499620768)
,p_name=>'P11_DOC7'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8213801343984620767)
,p_prompt=>'Columns live inside Rows - Example 1'
,p_source=>'&PATH.img/docs-grid-7.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Here''s the first column of that row.'
,p_attribute_01=>'URL'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8213801471019620769)
,p_name=>'P11_DOC8'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8213801343984620767)
,p_prompt=>'Columns live inside Rows - Example 2'
,p_source=>'&PATH.img/docs-grid-8.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Here''s the 11 other columns of that row.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8213801616762620770)
,p_name=>'P11_DOC9'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8213801343984620767)
,p_prompt=>'Columns live inside Rows - Example 3'
,p_source=>'&PATH.img/docs-grid-9.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This is another row.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8137641297359979087)
,p_name=>'toggleContainer'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8137641182571979086)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8137641370000979088)
,p_event_id=>wwv_flow_api.id(8137641297359979087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").toggleClass("main-container");'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Helpers'
,p_alias=>'HELPERS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Helpers'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810736270672784)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110372630208470506)
,p_plug_name=>'Helpers'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>These are template options available through all sorts of components for more flexibility.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110372758701470507)
,p_plug_name=>'Vertical Alignment'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Vertical alignment can be a pain sometimes. You can easily vertically center things by adding the template option to the items you want to vertically align.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110372845264470508)
,p_plug_name=>'{vertical aligned}'
,p_parent_plug_id=>wwv_flow_api.id(4110372758701470507)
,p_region_template_options=>'#DEFAULT#:valign-wrapper:center-align'
,p_region_attributes=>'style="height:400px;"'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<div style="width:100%">This should be vertically aligned</div>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110373047984470510)
,p_plug_name=>'Horizontal Alignment'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Vertical alignment can be a pain sometimes. You can easily vertically center things by adding the template option to the items you want to vertically align.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110373176898470511)
,p_plug_name=>'{left aligned}'
,p_parent_plug_id=>wwv_flow_api.id(4110373047984470510)
,p_region_template_options=>'#DEFAULT#:left-align'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This should be left aligned'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110373222797470512)
,p_plug_name=>'{center aligned}'
,p_parent_plug_id=>wwv_flow_api.id(4110373047984470510)
,p_region_template_options=>'#DEFAULT#:center-align'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This should be center aligned'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110373389893470513)
,p_plug_name=>'{right aligned}'
,p_parent_plug_id=>wwv_flow_api.id(4110373047984470510)
,p_region_template_options=>'#DEFAULT#:right-align'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This should be right aligned'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110373464551470514)
,p_plug_name=>'Quick Floats'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Quickly float things by adding a template option (left or right) to the element. !important is used to avoid specificity issues.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110374704342470527)
,p_plug_name=>'{left float}'
,p_parent_plug_id=>wwv_flow_api.id(4110373464551470514)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This should be floated left'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110374862115470528)
,p_plug_name=>'{right float}'
,p_parent_plug_id=>wwv_flow_api.id(4110373464551470514)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This should be floated right'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110373528915470515)
,p_plug_name=>'Hiding Content'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>We provide template options to hide content on specific screen sizes.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4110373678372470516)
,p_name=>'{collection}'
,p_parent_plug_id=>wwv_flow_api.id(4110373528915470515)
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:hide-title:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#:with-header'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ''Hidden for all Devices'' display',
'      , null badge',
'      , null new_badge',
'FROM    dual',
'',
'UNION',
'',
'SELECT  ''Hidden for Mobile Only'' display',
'      , null badge',
'      , null new_badge',
'FROM    dual',
'',
'UNION',
'',
'SELECT  ''Hidden for Tablet Only'' display',
'      , null badge',
'      , null new_badge',
'FROM    dual',
'',
'UNION',
'',
'SELECT  ''Hidden for Tablet and Below'' display',
'      , null badge',
'      , null new_badge',
'FROM    dual',
'',
'UNION',
'',
'SELECT  ''Hidden for Tablet and Above'' display',
'      , null badge',
'      , null new_badge',
'FROM    dual',
'',
'UNION',
'',
'SELECT  ''Hidden for Desktop Only'' display',
'      , null badge',
'      , null new_badge',
'FROM    dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9652079909139010806)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4110373753472470517)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>1
,p_column_heading=>'Screen Range'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4110373861862470518)
,p_query_column_id=>2
,p_column_alias=>'BADGE'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4110373940349470519)
,p_query_column_id=>3
,p_column_alias=>'NEW_BADGE'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110374043965470520)
,p_plug_name=>'I''m on a large screen!'
,p_parent_plug_id=>wwv_flow_api.id(4110373528915470515)
,p_icon_css_classes=>'desktop_windows'
,p_region_template_options=>'#DEFAULT#:hide-on-med-and-down'
,p_plug_template=>wwv_flow_api.id(9635259506914266756)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110374699676470526)
,p_plug_name=>'Examples (resize me)'
,p_parent_plug_id=>wwv_flow_api.id(4110373528915470515)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110375055488470530)
,p_plug_name=>'I''m on a medium screen!'
,p_parent_plug_id=>wwv_flow_api.id(4110373528915470515)
,p_icon_css_classes=>'tablet'
,p_region_template_options=>'#DEFAULT#:hide-on-small-only hide-on-large-only'
,p_plug_template=>wwv_flow_api.id(9635259506914266756)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110375135786470531)
,p_plug_name=>'I''m on a small screen!'
,p_parent_plug_id=>wwv_flow_api.id(4110373528915470515)
,p_icon_css_classes=>'smartphone'
,p_region_template_options=>'#DEFAULT#:hide-on-med-and-up'
,p_plug_template=>wwv_flow_api.id(9635259506914266756)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110375258842470532)
,p_plug_name=>'Truncation'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>To truncate long lines of text in an ellipsis, add the truncate template option to the region that contains the text. See an example below of a header being truncated inside a card.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110375315044470533)
,p_plug_name=>'{truncation}'
,p_parent_plug_id=>wwv_flow_api.id(4110375258842470532)
,p_region_template_options=>'#DEFAULT#:truncate'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_css_classes=>'col s6 offset-s3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This is an extremely long text that will be truncated. This is an example of a header being truncated inside a card.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Media'
,p_alias=>'MEDIA'
,p_page_mode=>'NORMAL'
,p_step_title=>'Media'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810736270672784)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125205649'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1056358270432627342)
,p_plug_name=>'Media'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Here are a couple of template options to make your media more flexible.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1056358398702627343)
,p_plug_name=>'Responsive Images'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Activate the "Image Responsive" template option on the page item to make your image responsive.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1056358521292627345)
,p_plug_name=>'Circular Images'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>You can easily transform any squared image to a circled image.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1056358738927627347)
,p_plug_name=>'{card panel}'
,p_parent_plug_id=>wwv_flow_api.id(1056358521292627345)
,p_region_template_options=>'#DEFAULT#:valign-wrapper:z-depth-3'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1056358943324627349)
,p_plug_name=>'Responsive Videos'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>We provide a container for Embedded Videos that resizes them responsively.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110372347062470503)
,p_plug_name=>'Responsive Embed'
,p_parent_plug_id=>wwv_flow_api.id(1056358943324627349)
,p_region_template_options=>'#DEFAULT#:flow-text-region:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>We provide a container for Embedded Videos that resizes them responsively.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1056359040987627350)
,p_plug_name=>'{video}'
,p_parent_plug_id=>wwv_flow_api.id(4110372347062470503)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(4109517354323428135)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<iframe width="853" height="480" src="//www.youtube.com/embed/Q8TXgCzxEnw?rel=0" frameborder="0" allowfullscreen></iframe>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110372448753470504)
,p_plug_name=>'Responsive HTML5 Videos'
,p_parent_plug_id=>wwv_flow_api.id(1056358943324627349)
,p_region_template_options=>'#DEFAULT#:flow-text-region:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>To make your HTML5 Videos responsive just use the "Video Responsive" region template</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110372582959470505)
,p_plug_name=>'{video}'
,p_parent_plug_id=>wwv_flow_api.id(4110372448753470504)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(4109517354323428135)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<video controls>',
'    <source src="&PATH.img/responsive-video.mp4" type="video/mp4">',
'</video>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1056358447538627344)
,p_name=>'P13_IMAGE_RESPONSIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1056358398702627343)
,p_prompt=>'Image responsive'
,p_source=>'&PATH.img/parallax1.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(19287996820552801147)
,p_item_template_options=>'#DEFAULT#:item-image-responsive'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1056358607991627346)
,p_name=>'P13_IMAGE_CIRCLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1056358738927627347)
,p_prompt=>'Image responsive'
,p_source=>'&PATH.img/profile-picture.jpeg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_colspan=>3
,p_grid_column_css_classes=>'s6'
,p_field_template=>wwv_flow_api.id(19287996820552801147)
,p_item_template_options=>'#DEFAULT#:item-image-circle:item-image-responsive'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1056358878143627348)
,p_name=>'P13_TEXT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1056358738927627347)
,p_prompt=>'Text'
,p_source=>'This is a square image. Add the "circle" template option on the page item to make it appear circular.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'s6 m9'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#:item-no-label'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Sass'
,p_alias=>'SASS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Sass'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810736270672784)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045019'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8643306059027320076)
,p_plug_name=>'Variables'
,p_region_template_options=>'#DEFAULT#:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>If you choose to work with Sass (optional), all these variables are available for quick customization in <pre><code>/client/assets/scss/_apex_variables.scss</code></pre></p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459533781059045969)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(8643306059027320076)
,p_region_template_options=>'#DEFAULT#:language-scss'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*** Colors ***/',
'$primary-color: color("cyan", "base") !default;',
'$primary-color-light: lighten($primary-color, 15%) !default;',
'$primary-color-dark: darken($primary-color, 15%) !default;',
'',
'$secondary-color: color("red", "base") !default;',
'$success-color: color("green", "base") !default;',
'$error-color: color("red", "base") !default;',
'$link-color: color("light-blue", "darken-1") !default;',
'',
'/*** Badges ***/',
'$badge-bg-color: $secondary-color;',
'',
'/*** Buttons ***/',
'$button-bg-color-disabled: #DFDFDF !default;',
'$button-color: $secondary-color !default;',
'$button-color-disabled: #9F9F9F !default;',
'$button-color-flat: #343434 !default;',
'$button-color-raised: #FFF !default;',
'$button-floating-size: 37px !default;',
'$button-height: 36px !default;',
'$button-font-size-shared: 1.3rem !default;',
'$button-line-height: 36px !default;',
'',
'',
'/*** Cards ***/',
'$card-padding: 20px !default;',
'$card-bg-color: #fff !default;',
'',
'/*** Collapsible ***/',
'$collapsible-height: 3rem !default;',
'$collapsible-header-color: #fff !default;',
'$collapsible-border-color: #ddd !default;',
'',
'',
'/*** Dropdown ***/',
'$dropdown-color: $secondary-color;',
'',
'/*** Fonts ***/',
'$roboto-font-path: "../font/roboto/" !default;',
'$icons-font-path: "../font/material-design-icons/" !default;',
'',
'/*** Forms ***/',
'// Text Inputs + Textarea',
'$input-border-color: color("grey", "base") !default;',
'$input-error-color: $error-color !default;',
'$input-success-color: $success-color !default;',
'$input-focus-color: $secondary-color !default;',
'$label-font-size: .8rem !default;',
'$input-disabled-color: rgba(0,0,0, .26) !default;',
'$input-disabled-solid-color: #BDBDBD !default;',
'',
'',
'// Radio Buttons',
'$radio-fill-color: $secondary-color !default;',
'$radio-empty-color: #5a5a5a !default;',
'',
'// Switches',
'$switch-bg-color: $secondary-color !default;',
'$switch-checked-lever-bg: desaturate(lighten($secondary-color, 25%), 25%) !default;',
'$switch-unchecked-bg: #F1F1F1 !default;',
'$switch-unchecked-lever-bg: #818181 !default;',
'',
'// Date Picker',
'$datepicker-weekday-bg: darken($secondary_color, 7%) !default;',
'$datepicker-date-bg: $secondary_color !default;',
'$datepicker-year: rgba(255, 255, 255, .4) !default;',
'$datepicker-focus: rgba(0,0,0, .05) !default;',
'$datepicker-selected: $secondary-color;',
'$datepicker-selected-outfocus: desaturate(lighten($secondary-color, 35%), 15%);',
'',
'',
'/*** Global ***/',
'// Media Query Ranges',
'$small-screen-up: 601px !default;',
'$medium-screen-up: 993px !default;',
'$large-screen-up: 1201px !default;',
'$small-screen: 600px !default;',
'$medium-screen: 992px !default;',
'$large-screen: 1200px !default;',
'',
'$medium-and-up: "only screen and (min-width : #{$small-screen-up})" !default;',
'$large-and-up: "only screen and (min-width : #{$medium-screen-up})" !default;',
'$small-and-down: "only screen and (max-width : #{$small-screen})" !default;',
'$medium-and-down: "only screen and (max-width : #{$medium-screen})" !default;',
'$medium-only: "only screen and (min-width : #{$small-screen-up}) and (max-width : #{$medium-screen})" !default;',
'',
'// Grid Variables',
'$num-cols: 12 !default;',
'$gutter-width: 1.5rem !default;',
'$element-top-margin: $gutter-width/3 !default;',
'$element-bottom-margin: ($gutter-width*2)/3 !default;',
'',
'/*** Navbar ***/',
'$navbar-height: 64px !default;',
'$navbar-height-mobile: 56px !default;',
'',
'',
'/*** SideNav ***/',
'',
'',
'',
'/*** Tabs ***/',
'$tabs-underline-color: $primary-color-light;',
'$tabs-text-color: $primary-color;',
'',
'/*** Tables ***/',
'$table-border-color: #d0d0d0;',
'$table-striped-color: #f2f2f2;',
'',
'/*** Toasts ***/',
'$toast-height: 48px !default;',
'$toast-color: #323232 !default;',
'$toast-text-color: #fff !default;',
'',
'/*** Typography ***/',
'$off-black: rgba(0, 0, 0, 0.87) !default;',
'// Header Styles',
'$h1-fontsize: 4.2rem !default;',
'$h2-fontsize: 3.56rem !default;',
'$h3-fontsize: 2.92rem !default;',
'$h4-fontsize: 2.28rem !default;',
'$h5-fontsize: 1.64rem !default;',
'$h6-fontsize: 1rem !default;',
'',
'// Footer',
'$footer-bg-color: $primary-color;',
'',
'// Flowtext',
'$range : $large-screen - $small-screen !default;',
'$intervals: 20 !default;',
'$interval-size: $range / $intervals !default;',
'',
'/*** Collections ***/',
'$collection-border-color: #e0e0e0 !default;',
'$collection-bg-color: #fff !default;',
'$collection-active-bg-color: $secondary-color !default;',
'$collection-active-color: lighten($secondary-color, 55%) !default;',
'$collection-hover-bg-color: #ddd !default;',
'',
'/* Progress Bar */',
'$progress-bar-color: $secondary-color;'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Shadow'
,p_alias=>'SHADOW'
,p_page_mode=>'NORMAL'
,p_step_title=>'Shadow'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810736270672784)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125205617'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087145433091485113)
,p_plug_name=>'Shadows'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>In material design, everything should have a certain z-depth that determines how far raised or close to the page the element is.</p>',
'',
'<p>By default, everything has a depth of 1.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623356188015080125)
,p_plug_name=>'Depth 5'
,p_parent_plug_id=>wwv_flow_api.id(9087145433091485113)
,p_region_template_options=>'#DEFAULT#:yellow:lighten-3:z-depth-5'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'s6'
,p_plug_display_point=>'BODY'
,p_plug_source=>' Depth 5'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623356297424080126)
,p_plug_name=>'Depth 2'
,p_parent_plug_id=>wwv_flow_api.id(9087145433091485113)
,p_region_template_options=>'#DEFAULT#:red:lighten-3:z-depth-2'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'s6'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Depth 2'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623356340459080127)
,p_plug_name=>'Depth 3'
,p_parent_plug_id=>wwv_flow_api.id(9087145433091485113)
,p_region_template_options=>'#DEFAULT#:light-blue:lighten-3:z-depth-3'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'s6'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Depth 3'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623356507375080128)
,p_plug_name=>'Depth 4'
,p_parent_plug_id=>wwv_flow_api.id(9087145433091485113)
,p_region_template_options=>'#DEFAULT#:light-green:lighten-3:z-depth-4'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'s6'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Depth 4'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9773690286255869642)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9773690609101869645)
,p_name=>'P15_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9773690286255869642)
,p_prompt=>'Template Options - Shadow'
,p_source=>'&PATH.img/docs-shadow-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Choose the ''Shadow Depth''. Regions only. Buttons will be supported in the next version.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Table'
,p_alias=>'TABLES'
,p_page_mode=>'NORMAL'
,p_step_title=>'Table'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810736270672784)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125205700'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4586560699973819002)
,p_name=>'Responsive Style 2'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#:table-responsive'
,p_display_point=>'BODY'
,p_source=>'SELECT ENAME, JOB, SAL FROM EMP'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9090634527809844626)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4586560786015819003)
,p_query_column_id=>1
,p_column_alias=>'ENAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4586560847208819004)
,p_query_column_id=>2
,p_column_alias=>'JOB'
,p_column_display_sequence=>2
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4586560934140819005)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9090631227838721675)
,p_plug_name=>'Tables'
,p_region_template_options=>'#DEFAULT#:flow-text-region:h1:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Tables are a nice way to organize a lot of data. We provide a few utility classes to help you style your table as easily as possible. In addition, to improve mobile experience, all tables on mobile-screen widths are centered automatically.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9090631740090734597)
,p_name=>'Borderless'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>'SELECT ENAME, JOB, SAL FROM EMP'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9090634527809844626)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090632139069734610)
,p_query_column_id=>1
,p_column_alias=>'ENAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090632245306734610)
,p_query_column_id=>2
,p_column_alias=>'JOB'
,p_column_display_sequence=>2
,p_column_heading=>'Job'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090632535762734610)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9090635634997865633)
,p_name=>'Striped'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'striped'
,p_display_point=>'BODY'
,p_source=>'SELECT ENAME, JOB, SAL FROM EMP'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9090634527809844626)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090635833248865633)
,p_query_column_id=>1
,p_column_alias=>'ENAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090635957927865633)
,p_query_column_id=>2
,p_column_alias=>'JOB'
,p_column_display_sequence=>2
,p_column_heading=>'Job'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090636052177865633)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9090636140538867230)
,p_name=>'Hoverable'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'hoverable'
,p_display_point=>'BODY'
,p_source=>'SELECT ENAME, JOB, SAL FROM EMP'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9090634527809844626)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090636343038867232)
,p_query_column_id=>1
,p_column_alias=>'ENAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090636430731867232)
,p_query_column_id=>2
,p_column_alias=>'JOB'
,p_column_display_sequence=>2
,p_column_heading=>'Job'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090636557390867232)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9090636644694868384)
,p_name=>'Responsive Style 1'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#:responsive-table'
,p_display_point=>'BODY'
,p_source=>'SELECT ENAME, JOB, SAL FROM EMP'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9090634527809844626)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090636842189868386)
,p_query_column_id=>1
,p_column_alias=>'ENAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090636943102868386)
,p_query_column_id=>2
,p_column_alias=>'JOB'
,p_column_display_sequence=>2
,p_column_heading=>'Job'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9090637053108868386)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9773762911697919155)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9773763210244919155)
,p_name=>'P16_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9773762911697919155)
,p_prompt=>'Report Attributes - Template Options'
,p_source=>'&PATH.img/docs-tables-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Select your ''Report Attributes''. Select template ''Report - Standard''. Choose the desired template option.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Typography'
,p_alias=>'TYPOGRAPHY'
,p_page_mode=>'NORMAL'
,p_step_title=>'Typography'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810736270672784)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125205008'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213804536221620799)
,p_plug_name=>'Typography'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Here are some typography options.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213804595996620800)
,p_plug_name=>'Headers'
,p_region_template_options=>'#DEFAULT#:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>We provide some basic styling on header tags. In the example, you can see the the 6 header tags'' different sizes.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213804722232620801)
,p_plug_name=>'{headers}'
,p_parent_plug_id=>wwv_flow_api.id(8213804595996620800)
,p_region_template_options=>'#DEFAULT#:cyan:white-text'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h1>Heading h1</h1>',
'<h2>Heading h2</h2>',
'<h3>Heading h3</h3>',
'<h4>Heading h4</h4>',
'<h5>Heading h5</h5>',
'<h6>Heading h6</h6>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213804901873620803)
,p_plug_name=>'Blockquotes'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Blockquotes are mainly used to give emphasis to a quote or citation. You can also use these for some extra text hierarchy and emphasis.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213804969732620804)
,p_plug_name=>'{blockquote}'
,p_parent_plug_id=>wwv_flow_api.id(8213804901873620803)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(8216073412913288398)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This is an example quotation that uses the blockquote tag.<br>Here is another line to make it look bigger.'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213805153249620805)
,p_plug_name=>'Flow Text'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213805206479620806)
,p_plug_name=>'{flowtext}'
,p_region_name=>'flow-text-demo'
,p_parent_plug_id=>wwv_flow_api.id(8213805153249620805)
,p_region_template_options=>'#DEFAULT#:flow-text-region'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>One common flaw we''ve seen in many frameworks is a lack of support for truly responsive text. While elements on the page resize fluidly, text still resizes on a fixed basis. To ameliorate this problem, for text heavy pages, we''ve created a class t'
||'hat fluidly scales text size and line-height to optimize readability for the user. Line length stays between 45-80 characters and line height scales to be larger on smaller screens.</p>',
'',
'<p>To see Flow Text in action, slowly resize your browser and watch the size of this text body change! Use the button above to toggle off/on flow-text to see the difference!</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8216214300959393951)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(8213805153249620805)
,p_region_template_options=>'#DEFAULT#:apex-materialbox:h3:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8213805314425620807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8213805153249620805)
,p_button_name=>'TOGGLE_FLOW_TEXT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Toggle Flow Text'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8216214565884393959)
,p_name=>'P17_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8216214300959393951)
,p_prompt=>'Region Template Options'
,p_source=>'&PATH.img/docs-typography-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'You can set the ''Flow Text'' option for any region.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8213805397732620808)
,p_name=>'toggleFlowText'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8213805314425620807)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8213805550223620809)
,p_event_id=>wwv_flow_api.id(8213805397732620808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#flow-text-demo").toggleClass("flow-text-region");'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Chips'
,p_page_mode=>'NORMAL'
,p_step_title=>'Chips'
,p_step_sub_title=>'Chips'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125205711'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13184740049105338322)
,p_plug_name=>'Chips'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Chips can be used to represent small blocks of information. They are most commonly used either for contacts or for tags.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(13184740401380338328)
,p_name=>'Example'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''<img src="&PATH.img/profile-picture.jpeg">'' image',
'      , ''Vincent 1'' text',
'      , 1 ind_closable',
'FROM    dual',
'',
'UNION',
'',
'SELECT ''<img src="&PATH.img/profile-picture.jpeg">'' image',
'      , ''Vincent 2'' text',
'      , null ind_closable',
'FROM    dual',
'',
'UNION',
'',
'SELECT null image',
'      , ''Vincent 3'' text',
'      , 1 ind_closable',
'FROM    dual',
'',
'UNION',
'',
'SELECT null image',
'      , ''Vincent 4'' text',
'      , null ind_closable',
'FROM    dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(13184883243820533730)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13184763035930514901)
,p_query_column_id=>1
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>1
,p_column_heading=>'Image'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13184763177134514902)
,p_query_column_id=>2
,p_column_alias=>'TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13184763232241514903)
,p_query_column_id=>3
,p_column_alias=>'IND_CLOSABLE'
,p_column_display_sequence=>3
,p_column_heading=>'Ind closable'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13184742445256338332)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(13184740401380338328)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''&lt;img src="profile-picture.jpeg">'' image',
'      , ''Vincent 1'' text',
'      , 1 ind_closable',
'FROM    dual',
'',
'UNION',
'',
'SELECT ''&lt;img src="profile-picture.jpeg">'' image',
'      , ''Vincent 2'' text',
'      , null ind_closable',
'FROM    dual',
'',
'UNION',
'',
'SELECT null image',
'      , ''Vincent 3'' text',
'      , 1 ind_closable',
'FROM    dual',
'',
'UNION',
'',
'SELECT null image',
'      , ''Vincent 4'' text',
'      , null ind_closable',
'FROM    dual'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Badges'
,p_alias=>'BADGES'
,p_page_mode=>'NORMAL'
,p_step_title=>'Badges'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137628770089979062)
,p_plug_name=>'Badges'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Badges can notify you that there are new or unread messages or notifications.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8137645711850985367)
,p_name=>'Badges in Collections'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , round(dbms_random.value(1,10)) || decode(ename, ''JONES'', '' new'') badge',
'      , decode(ename, ''JONES'', ''Y'') new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9652104318611059757)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137646809718985371)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>1
,p_column_heading=>'Employee Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137628919744979063)
,p_query_column_id=>2
,p_column_alias=>'TARGET'
,p_column_display_sequence=>4
,p_column_heading=>'Target'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137646047148985370)
,p_query_column_id=>3
,p_column_alias=>'BADGE'
,p_column_display_sequence=>2
,p_column_heading=>'Badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137646368921985370)
,p_query_column_id=>4
,p_column_alias=>'NEW_BADGE'
,p_column_display_sequence=>3
,p_column_heading=>'New badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137647962326985374)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(8137645711850985367)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , round(dbms_random.value(1,10)) || decode(ename, ''JONES'', '' new'') badge',
'      , decode(ename, ''JONES'', ''Y'') new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137720756751991098)
,p_plug_name=>'Badges in Dropdown'
,p_region_template_options=>'#DEFAULT#:scrollspy:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137639406771979068)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(8137720756751991098)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , round(dbms_random.value(1,10)) badge',
'      , decode(ename, ''JONES'', ''Y'') new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8137721392421991102)
,p_name=>'Click me'
,p_parent_plug_id=>wwv_flow_api.id(8137720756751991098)
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:hide-title:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , round(dbms_random.value(1,10)) badge',
'      , decode(ename, ''JONES'', ''Y'') new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(8137824445990040459)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137628990092979064)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>1
,p_column_heading=>'Display'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137639117882979065)
,p_query_column_id=>2
,p_column_alias=>'TARGET'
,p_column_display_sequence=>2
,p_column_heading=>'Target'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137639201109979066)
,p_query_column_id=>3
,p_column_alias=>'BADGE'
,p_column_display_sequence=>3
,p_column_heading=>'Badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137639349065979067)
,p_query_column_id=>4
,p_column_alias=>'NEW_BADGE'
,p_column_display_sequence=>4
,p_column_heading=>'New badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Buttons'
,p_alias=>'BUTTONS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Buttons'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125205751'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137640002389979074)
,p_plug_name=>'Fixed Action Button'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>If you want a fixed floating action button, you can add multiple actions that will appear on hover. Our demo is in the bottom righthand corner of the page.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8137640576823979080)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(8137640002389979074)
,p_region_template_options=>'#DEFAULT#:apex-materialbox:flow-text-region:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>All buttons inside the FAB will automatically be set to "Floating".</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12250581879094269244)
,p_plug_name=>'{bottom left}'
,p_parent_plug_id=>wwv_flow_api.id(8137640002389979074)
,p_region_template_options=>'#DEFAULT#:hide-title:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12250582445488269250)
,p_plug_name=>'{bottom right}'
,p_parent_plug_id=>wwv_flow_api.id(8137640002389979074)
,p_region_template_options=>'#DEFAULT#:flow-text-region:hide-title:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>If you want a fixed floating action button, you can add multiple actions that will appear on hover. Our demo is in the bottom lefthand and righthand corner of the page.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16321030663779868029)
,p_plug_name=>'Horizontal FAB'
,p_parent_plug_id=>wwv_flow_api.id(8137640002389979074)
,p_region_template_options=>'#DEFAULT#:flow-text-region:h5:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Just activate the <code>horizontal</code> Template Option.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16321031209576868035)
,p_plug_name=>'Click to Toggle FAB'
,p_parent_plug_id=>wwv_flow_api.id(8137640002389979074)
,p_region_template_options=>'#DEFAULT#:flow-text-region:h5:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Just activate the <code>click-to-toggle</code> Template Option.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9086532437703991646)
,p_plug_name=>'Raised'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9086532642107991649)
,p_plug_name=>'Floating'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9086532851456991649)
,p_plug_name=>'Flat'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9086533045695991649)
,p_plug_name=>'Large'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9086533257359991650)
,p_plug_name=>'Disabled'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9086533543635005031)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:flow-text-region:h1:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>There are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat b'
||'uttons are usually used within elements that already have depth like cards or modals.</p>',
'',
'<p>All buttons can have a wave effect. Click on a button to see.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9773985737411985053)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8137640092843979075)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12250582445488269250)
,p_button_name=>'BUTTON_FAB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:fab-right'
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_button_image_alt=>'add'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'edit'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9086535331655086769)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9086532437703991646)
,p_button_name=>'BUTTON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Button'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12250582234567269248)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12250581879094269244)
,p_button_name=>'BUTTON_FAB_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:fab-left'
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_button_image_alt=>'add'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'edit'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321031066076868033)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16321030663779868029)
,p_button_name=>'BUTTON_FAB_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:horizontal:fab-absolute'
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_button_image_alt=>'add'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'edit'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321031692315868039)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16321031209576868035)
,p_button_name=>'BUTTON_FAB_2_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:click-to-toggle:horizontal:fab-absolute'
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_button_image_alt=>'add'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'edit'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8137640251829979076)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12250582445488269250)
,p_button_name=>'BUTTON_FAB_OPTION1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:red:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'insert_chart'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9086535735654095216)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9086532437703991646)
,p_button_name=>'BUTTON2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Button'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'cloud'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12250581961592269245)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12250581879094269244)
,p_button_name=>'BUTTON_FAB_OPTION1_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:red:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'insert_chart'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321030760583868030)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16321030663779868029)
,p_button_name=>'BUTTON_FAB_OPTION1_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:red:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'insert_chart'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321031360316868036)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16321031209576868035)
,p_button_name=>'BUTTON_FAB_OPTION1_2_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:red:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'insert_chart'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8137640309005979077)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12250582445488269250)
,p_button_name=>'BUTTON_FAB_OPTION2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:yellow:darken-1:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'format_quote'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9086535933067096484)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(9086532437703991646)
,p_button_name=>'BUTTON3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-right:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Button'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'cloud'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12250582086785269246)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12250581879094269244)
,p_button_name=>'BUTTON_FAB_OPTION2_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:yellow:darken-1:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'format_quote'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321030850729868031)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16321030663779868029)
,p_button_name=>'BUTTON_FAB_OPTION2_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:yellow:darken-1:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'format_quote'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321031413774868037)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16321031209576868035)
,p_button_name=>'BUTTON_FAB_OPTION2_2_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:yellow:darken-1:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'format_quote'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8137640366780979078)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12250582445488269250)
,p_button_name=>'BUTTON_FAB_OPTION3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:green:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'publish'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9086536841520305213)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(9086532642107991649)
,p_button_name=>'BUTTON4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn-large:btn-floating:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'add'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'add'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12250582140023269247)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12250581879094269244)
,p_button_name=>'BUTTON_FAB_OPTION3_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:green:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'publish'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321030945361868032)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(16321030663779868029)
,p_button_name=>'BUTTON_FAB_OPTION3_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:green:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'publish'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321031570423868038)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(16321031209576868035)
,p_button_name=>'BUTTON_FAB_OPTION3_2_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:green:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'publish'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8137640557304979079)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(12250582445488269250)
,p_button_name=>'BUTTON_FAB_OPTION4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:blue:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'attach_file'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9086537350350316296)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(9086532851456991649)
,p_button_name=>'BUTTON5'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn-flat:waves-effect waves-red'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Click me'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12250582300456269249)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(12250581879094269244)
,p_button_name=>'BUTTON_FAB_OPTION4_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:blue:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'attach_file'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321031142263868034)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(16321030663779868029)
,p_button_name=>'BUTTON_FAB_OPTION4_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:blue:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'attach_file'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321031739082868040)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(16321031209576868035)
,p_button_name=>'BUTTON_FAB_OPTION4_2_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:blue:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'&nbsp;'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'attach_file'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9086537545174318706)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(9086533045695991649)
,p_button_name=>'BUTTON6'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:waves-effect waves-light:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Button'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9086537743449319475)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(9086533045695991649)
,p_button_name=>'BUTTON7'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Button'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'cloud'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9086537941939320258)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(9086533045695991649)
,p_button_name=>'BUTTON8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-right:btn:waves-effect waves-light'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Button'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'cloud'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9086538139135321559)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(9086533257359991650)
,p_button_name=>'BUTTON9'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:wave-none'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Button'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_css_classes=>'disabled'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8137640694123979081)
,p_name=>'P21_DOC4'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8137640576823979080)
,p_prompt=>'Button Structure'
,p_source=>'&PATH.img/docs-buttons-4.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Declare as many buttons as you need. This works within the same region.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8137640772098979082)
,p_name=>'P21_DOC5'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8137640576823979080)
,p_prompt=>'Fixed Action Button'
,p_source=>'&PATH.img/docs-buttons-5.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Choose one of your buttons to be the ''Fixed Action Button'''
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8137640923404979083)
,p_name=>'P21_DOC6'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8137640576823979080)
,p_prompt=>'Fixed Action Button Options'
,p_source=>'&PATH.img/docs-buttons-6.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'All the other buttons will become options to the ''Fixed Action Button'', within the same region'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9623360726619080171)
,p_name=>'P21_DOC2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9773985737411985053)
,p_prompt=>'Template Options - Button Type'
,p_source=>'&PATH.img/docs-buttons-2.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Select your button type.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9623360835024080172)
,p_name=>'P21_DOC3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9773985737411985053)
,p_prompt=>'Template Options - Button Wave'
,p_source=>'&PATH.img/docs-buttons-3.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'You have to check ''Wave Effect'' first, then select your wave color.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9773986024061985053)
,p_name=>'P21_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9773985737411985053)
,p_prompt=>'Template Options - Button Size'
,p_source=>'&PATH.img/docs-buttons-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Select your button size.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Cards'
,p_alias=>'CARDS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Cards'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210154'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9090638144525906227)
,p_plug_name=>'Cards'
,p_region_template_options=>'#DEFAULT#:flow-text-region:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Cards are a convenient means of displaying content composed of different types of objects. They’re also well-suited for presenting similar objects whose size or supported actions can vary considerably, like photos with captions of variable length.'
||'</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9090648750507314734)
,p_plug_name=>'Card Panel'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9090648926742317331)
,p_plug_name=>'{Card Panel}'
,p_parent_plug_id=>wwv_flow_api.id(9090648750507314734)
,p_region_template_options=>'#DEFAULT#:teal:lighten-2'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_css_classes=>'m8'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<span class="white-text">I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively. I am similar to what is called a panel in other frameworks.</span>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9774184184356269329)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(9090648750507314734)
,p_region_template_options=>'#DEFAULT#:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9623357357440080137)
,p_name=>'Image Card'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''col m6'' column_css_classes',
'        ,''<img src="&PATH.img/sample-1.jpg">'' img',
'        ,''Card Title'' title',
'        ,''I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.'' content',
'        ,''#'' btn_link_1',
'        ,''This is a link'' btn_label_1',
'        ,''#'' btn_link_2',
'        ,null btn_label_2',
'FROM     dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9678357812882836094)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9774185408827269341)
,p_query_column_id=>1
,p_column_alias=>'COLUMN_CSS_CLASSES'
,p_column_display_sequence=>1
,p_column_heading=>'Column css classes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623357444290080138)
,p_query_column_id=>2
,p_column_alias=>'IMG'
,p_column_display_sequence=>2
,p_column_heading=>'Img'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623357551075080139)
,p_query_column_id=>3
,p_column_alias=>'TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623357689158080140)
,p_query_column_id=>4
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>4
,p_column_heading=>'Content'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623357818391080141)
,p_query_column_id=>5
,p_column_alias=>'BTN_LINK_1'
,p_column_display_sequence=>5
,p_column_heading=>'Btn link 1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623357856419080142)
,p_query_column_id=>6
,p_column_alias=>'BTN_LABEL_1'
,p_column_display_sequence=>6
,p_column_heading=>'Btn label 1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9774185549007269343)
,p_query_column_id=>7
,p_column_alias=>'BTN_LINK_2'
,p_column_display_sequence=>7
,p_column_heading=>'Btn link 2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9774185683382269344)
,p_query_column_id=>8
,p_column_alias=>'BTN_LABEL_2'
,p_column_display_sequence=>8
,p_column_heading=>'Btn label 2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9774183941343269327)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(9623357357440080137)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''col m6'' column_css_classes',
'        ,''&lt;img src="&PATH.img/sample-1.jpg"&gt;'' img',
'        ,''Card Title'' title',
'        ,''I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.'' content',
'        ,''#'' btn_link_1',
'        ,''This is a link'' btn_label_1',
'        ,''#'' btn_link_2',
'        ,null btn_label_2',
'FROM     dual'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9623357957535080143)
,p_name=>'Basic Card'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ''col m6'' column_css_classes',
'        ,null img',
'        ,''Card Title'' title',
'        ,''I am a very simple card. I am good at containing small bits of information.'' || ',
'        ''I am convenient because I require little markup to use effectively.'' content',
'        ,''#'' btn_link_1',
'        ,''This is a link'' btn_label_1',
'        ,''#'' btn_link_2',
'        ,''This is a link'' btn_label_2',
'FROM     dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9645169463850955836)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9774183915294269326)
,p_query_column_id=>1
,p_column_alias=>'COLUMN_CSS_CLASSES'
,p_column_display_sequence=>1
,p_column_heading=>'Column css classes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623358026674080144)
,p_query_column_id=>2
,p_column_alias=>'IMG'
,p_column_display_sequence=>2
,p_column_heading=>'Img'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623358144114080145)
,p_query_column_id=>3
,p_column_alias=>'TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623358274142080146)
,p_query_column_id=>4
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>4
,p_column_heading=>'Content'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623358339873080147)
,p_query_column_id=>5
,p_column_alias=>'BTN_LINK_1'
,p_column_display_sequence=>5
,p_column_heading=>'Btn link 1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623358443375080148)
,p_query_column_id=>6
,p_column_alias=>'BTN_LABEL_1'
,p_column_display_sequence=>6
,p_column_heading=>'Btn label 1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623359214751080155)
,p_query_column_id=>7
,p_column_alias=>'BTN_LINK_2'
,p_column_display_sequence=>7
,p_column_heading=>'Btn link 2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623359271252080156)
,p_query_column_id=>8
,p_column_alias=>'BTN_LABEL_2'
,p_column_display_sequence=>8
,p_column_heading=>'Btn label 2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9774099193361083805)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(9623357957535080143)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ''col m6'' column_css_classes',
'        ,null img',
'        ,''Card Title'' title',
'        ,''I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.'' content',
'        ,''#'' btn_link_1',
'        ,''This is a link'' btn_label_1',
'        ,''#'' btn_link_2',
'        ,''This is a link'' btn_label_2',
'FROM     dual'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9623358550603080149)
,p_name=>'Reveal Card'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''col m6'' column_css_classes',
'        ,''<img src="&PATH.img/office.jpg">'' img',
'        ,''Click here'' title',
'        ,''I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.'' content',
'        ,''#'' btn_link_1',
'        ,''This is a link'' btn_label_1',
'        ,''#'' btn_link_2',
'        ,null btn_label_2',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''col m6''',
'        ,''<img src="&PATH.img/office.jpg">'' img',
'        ,''Click here'' title',
'        ,''I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.'' content',
'        ,''#'' btn_link_1',
'        ,''This is a link'' btn_label_1',
'        ,''#'' btn_link_2',
'        ,null btn_label_2',
'FROM     dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9678358023662838215)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9774185436188269342)
,p_query_column_id=>1
,p_column_alias=>'COLUMN_CSS_CLASSES'
,p_column_display_sequence=>1
,p_column_heading=>'Column css classes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623358673468080150)
,p_query_column_id=>2
,p_column_alias=>'IMG'
,p_column_display_sequence=>2
,p_column_heading=>'Img'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623358755615080151)
,p_query_column_id=>3
,p_column_alias=>'TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623358889233080152)
,p_query_column_id=>4
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>4
,p_column_heading=>'Content'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623359010261080153)
,p_query_column_id=>5
,p_column_alias=>'BTN_LINK_1'
,p_column_display_sequence=>5
,p_column_heading=>'Btn link 1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623359092844080154)
,p_query_column_id=>6
,p_column_alias=>'BTN_LABEL_1'
,p_column_display_sequence=>6
,p_column_heading=>'Btn label 1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9774185762270269345)
,p_query_column_id=>7
,p_column_alias=>'BTN_LINK_2'
,p_column_display_sequence=>7
,p_column_heading=>'Btn link 2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9774185821209269346)
,p_query_column_id=>8
,p_column_alias=>'BTN_LABEL_2'
,p_column_display_sequence=>8
,p_column_heading=>'Btn label 2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9774184040629269328)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(9623358550603080149)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''col m6'' column_css_classes',
'        ,''&lt;img src="&PATH.img/office.jpg"&gt;'' img',
'        ,''Click here'' title',
'        ,''I am a very simple card. I am good at containing small bits of information.'' ||',
'        ''I am convenient because I require little markup to use effectively.'' content',
'        ,''#'' btn_link_1',
'        ,''This is a link'' btn_label_1',
'        ,''#'' btn_link_2',
'        ,null btn_label_2',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''col m6''',
'        ,''&lt;img src="&PATH.img/office.jpg"&gt;'' img',
'        ,''Click here'' title',
'        ,''I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.'' content',
'        ,''#'' btn_link_1',
'        ,''This is a link'' btn_label_1',
'        ,''#'' btn_link_2',
'        ,null btn_label_2',
'FROM     dual'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9774184242391269330)
,p_name=>'P22_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9774184184356269329)
,p_prompt=>'Template Options - Card Panel'
,p_source=>'&PATH.img/docs-cards-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Select the ''Region - Card Panel'' Region Template. Pick your desired template options.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Collections'
,p_alias=>'COLLECTIONS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Collections'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210009'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9392534926371416925)
,p_plug_name=>'Collections'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Collections allow you to group list objects together.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9392535631661416932)
,p_name=>'Basic'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , null badge',
'      , null new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9652079909139010806)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9652014167304935532)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>1
,p_column_heading=>'Employee Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793881005461470408)
,p_query_column_id=>2
,p_column_alias=>'BADGE'
,p_column_display_sequence=>2
,p_column_heading=>'Badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793881160140470409)
,p_query_column_id=>3
,p_column_alias=>'NEW_BADGE'
,p_column_display_sequence=>3
,p_column_heading=>'New badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793880699734470405)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(9392535631661416932)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , null badge',
'      , null new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9775216937452627698)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(9392535631661416932)
,p_region_template_options=>'#DEFAULT#:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9396161266510417206)
,p_name=>'Links'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , null badge',
'      , null new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9652104318611059757)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9652014288616935533)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>1
,p_column_heading=>'Employee Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9652014388087935534)
,p_query_column_id=>2
,p_column_alias=>'TARGET'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793880472569470403)
,p_query_column_id=>3
,p_column_alias=>'BADGE'
,p_column_display_sequence=>3
,p_column_heading=>'Badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793880645084470404)
,p_query_column_id=>4
,p_column_alias=>'NEW_BADGE'
,p_column_display_sequence=>4
,p_column_heading=>'New badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9774184324125269331)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(9396161266510417206)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , null badge',
'      , null new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9623359824925080162)
,p_name=>'Secondary Content'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#:with-header'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , null button_css_classes',
'      , ''send'' icon_css_classes',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9652148565941067451)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623359966316080163)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>1
,p_column_heading=>'Employee Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9623360057412080164)
,p_query_column_id=>2
,p_column_alias=>'TARGET'
,p_column_display_sequence=>2
,p_column_heading=>' '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8643306147837320077)
,p_query_column_id=>3
,p_column_alias=>'BUTTON_CSS_CLASSES'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8643766267521320078)
,p_query_column_id=>4
,p_column_alias=>'ICON_CSS_CLASSES'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793880868413470407)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(9623359824925080162)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , null button_css_classes',
'      , ''send'' icon_css_classes',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9652014476645935535)
,p_name=>'Headers'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'with-header'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , null badge',
'      , null new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9652079909139010806)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9652014530687935536)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>1
,p_column_heading=>'Employee Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793881246471470410)
,p_query_column_id=>2
,p_column_alias=>'BADGE'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793881292727470411)
,p_query_column_id=>3
,p_column_alias=>'NEW_BADGE'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793880859966470406)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(9652014476645935535)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , null badge',
'      , null new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9774184451431269332)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(9652014476645935535)
,p_region_template_options=>'#DEFAULT#:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9774184702601269334)
,p_name=>'P23_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9775216937452627698)
,p_prompt=>'Doc1'
,p_source=>'&PATH.img/docs-collections-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9774184800230269335)
,p_name=>'P23_DOC2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9774184451431269332)
,p_prompt=>'New'
,p_source=>'&PATH.img/docs-collections-2.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9774184844842269336)
,p_name=>'P23_DOC3'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9774184451431269332)
,p_prompt=>'New'
,p_source=>'&PATH.img/docs-collections-3.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Footer'
,p_alias=>'FOOTER'
,p_page_mode=>'NORMAL'
,p_step_title=>'Footer'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210207'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632091230466937268)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632091347703937269)
,p_plug_name=>'Sticky Footer'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>A sticky footer always stays on the bottom of the page regardless of how little content is on the page. However, this footer will be pushed down if there is a lot of content, so it is different from a fixed footer. Add the following code to your C'
||'SS file.</p>',
'',
'<p>Note: This may cause issues in Internet Explorer which has weak support for flexbox.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459534003072045971)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(7632091347703937269)
,p_region_template_options=>'#DEFAULT#:language-css'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  body {',
'    display: flex;',
'    min-height: 100vh;',
'    flex-direction: column;',
'  }',
'',
'  main {',
'    flex: 1 0 auto;',
'  }'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087176853189183205)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Footers are a great way to organize a lot of site navigation and information at the end of a page. This is where the user will look once hes finished scrolling through the current page or is looking for additional information about your website.</'
||'p>',
'',
'<p>Note: We use flexbox to structure our html so that the footer is always on the bottom of the page. It is important to keep the structure of your page within the 3 HTML5 tags below. This is handled automatically in the page template so you shouldn'''
||'t have to change it.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459533870271045970)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(9087176853189183205)
,p_region_template_options=>'#DEFAULT#:language-markup'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'&lt;header>',
'    Header Stuff',
'&lt;/header> ',
'',
'&lt;main>',
'    Main Stuff',
'&lt;/main> ',
'',
'&lt;footer>',
'    Footer Stuff',
'&lt;/footer>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7793861455365452841)
,p_name=>'P24_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7632091230466937268)
,p_prompt=>'Region Position and Template'
,p_source=>'&PATH.img/docs-footer-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'You must have the footer at Region Position 8 with the following region template.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Forms'
,p_alias=>'FORMS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Forms'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151209011321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087146147111801435)
,p_plug_name=>'Forms'
,p_region_template_options=>'#DEFAULT#:flow-text-region:h1:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Forms are the standard way to receive user inputted data. The transitions and smoothness of these elements are very important because of the inherent user interaction associated with forms.</p>'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087146338584808422)
,p_plug_name=>'Input fields'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Text fields allow user input. The border should light up simply and clearly indicating which field the user is currently editing. This is only used in our Input and Textarea form elements.</p>'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459535126808045982)
,p_plug_name=>'Display Only & Read Only'
,p_parent_plug_id=>wwv_flow_api.id(9087146338584808422)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>See how display only and read only field are handled in APEX.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459535457767045985)
,p_plug_name=>'Placeholders'
,p_parent_plug_id=>wwv_flow_api.id(9087146338584808422)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>See how placeholders are handled in APEX.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087153826342871139)
,p_plug_name=>'Icon Prefixes'
,p_parent_plug_id=>wwv_flow_api.id(9087146338584808422)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>You can add an icon prefix to make the form input label even more clear. Just add an icon with the class <code class=" language-markup">prefix</code> before the input and label.</p>'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087156354186964238)
,p_plug_name=>'Textarea'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Textareas allow larger expandable user input. The border should light up simply and clearly indicating which field the user is currently editing. This is only used in our Input and Textarea form elements.</p>',
'',
'<p>Textareas will auto resize to the text inside.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087157147055047381)
,p_plug_name=>'Select'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Select allows user input through specified options.</p>'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087158141177121338)
,p_plug_name=>'Radio Buttons'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Radio Buttons are used when the user must make only one selection out of a group of items. They can be styled with or without gap.</p>'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087165037067188932)
,p_plug_name=>'Checkboxes'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Checkboxes can be styled two different ways.</p>'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087165855552203706)
,p_plug_name=>'Date Picker'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Plugin from pickadate.js to create a Material Design date picker.</p>'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9623359675220080160)
,p_plug_name=>'File Input'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>If you want to style an input button with a path input we provide this structure.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8459535201960045983)
,p_name=>'P25_DISPLAY_ONLY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8459535126808045982)
,p_prompt=>'Display Only Label'
,p_source=>'I am display only'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column_css_classes=>'s6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8459535288472045984)
,p_name=>'P25_READ_ONLY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8459535126808045982)
,p_prompt=>'Read Only Label'
,p_source=>'I am read only'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'s6'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8459535559975045986)
,p_name=>'P25_PLACEHOLDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8459535457767045985)
,p_prompt=>'Username'
,p_placeholder=>'Enter your username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8459535772873045989)
,p_name=>'P25_CHECKBOX_FILLED'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(9087165037067188932)
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EXAMPLE_LOV'
,p_lov=>'.'||wwv_flow_api.id(9087158456892135339)||'.'
,p_lov_display_null=>'YES'
,p_tag_attributes=>'class="filled-in"'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8709128158218679717)
,p_name=>'P25_DEPTNO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(9087157147055047381)
,p_prompt=>'Cascading Parent'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DNAME as display_value, DEPTNO as return_value ',
'  from DEPT',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose your option'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8709128226195679718)
,p_name=>'P25_EMPNO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(9087157147055047381)
,p_prompt=>'Cascading Child'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ename d, empno r',
'FROM emp',
'WHERE deptno = :P25_DEPTNO'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose your option'
,p_lov_cascade_parent_items=>'P25_DEPTNO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087146727199817772)
,p_name=>'P25_FIRST_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9087146338584808422)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087146948262817772)
,p_name=>'P25_LAST_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9087146338584808422)
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087147138006817772)
,p_name=>'P25_USERNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9087146338584808422)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087147329690817772)
,p_name=>'P25_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9087146338584808422)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087147533907817773)
,p_name=>'P25_EMAIL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9087146338584808422)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select ename from emp'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087154356899879975)
,p_name=>'P25_FULL_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9087153826342871139)
,p_prompt=>'Full Name'
,p_pre_element_text=>'<i class="material-icons prefix">account_circle</i>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087154950644882915)
,p_name=>'P25_TELEPHONE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9087153826342871139)
,p_prompt=>'Telephone'
,p_pre_element_text=>'<i class="material-icons prefix">phone</i>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087156750139974305)
,p_name=>'P25_TEXTAREA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9087156354186964238)
,p_prompt=>'Message'
,p_pre_element_text=>'<i class="material-icons prefix">edit</i>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087157536707056429)
,p_name=>'P25_SELECT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9087157147055047381)
,p_prompt=>'Select'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EXAMPLE_LOV'
,p_lov=>'.'||wwv_flow_api.id(9087158456892135339)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose your option'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087157934742087766)
,p_name=>'P25_SELECT_DISABLED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9087157147055047381)
,p_prompt=>'Select Disabled'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EXAMPLE_LOV'
,p_lov=>'.'||wwv_flow_api.id(9087158456892135339)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose your option'
,p_cHeight=>1
,p_tag_attributes=>'disabled'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087160058199137698)
,p_name=>'P25_RADIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9087158141177121338)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EXAMPLE_LOV'
,p_lov=>'.'||wwv_flow_api.id(9087158456892135339)||'.'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087161048664164781)
,p_name=>'P25_RADIO_GAP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9087158141177121338)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EXAMPLE_LOV'
,p_lov=>'.'||wwv_flow_api.id(9087158456892135339)||'.'
,p_tag_attributes=>'class="with-gap"'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087165355109192187)
,p_name=>'P25_CHECKBOX'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9087165037067188932)
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EXAMPLE_LOV'
,p_lov=>'.'||wwv_flow_api.id(9087158456892135339)||'.'
,p_lov_display_null=>'YES'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9087166239137214724)
,p_name=>'P25_DATEPICKER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(9087165855552203706)
,p_prompt=>'Birthdate'
,p_pre_element_text=>'<i class="material-icons prefix">event</i>'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9623359774592080161)
,p_name=>'P25_FILE_BROWSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9623359675220080160)
,p_prompt=>'File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(8747212002608116649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16321030530497868028)
,p_name=>'P25_SELECT_MULTIPLE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9087157147055047381)
,p_prompt=>'Select Multiple'
,p_source=>'1:2'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EXAMPLE_LOV'
,p_lov=>'.'||wwv_flow_api.id(9087158456892135339)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose your option'
,p_cHeight=>5
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Icons'
,p_alias=>'ICONS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Icons'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8709126662979679702)
,p_plug_name=>'Search Google''s Icons'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p><a href="http://www.google.com/design/icons/">Search through Google''s icons library.</a></p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087177644670220220)
,p_plug_name=>'Usage'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:flow-text-region:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>To use these icons, just place the name of the icon into the class of an i tag</p>'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8709126545754679701)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(9087177644670220220)
,p_region_template_options=>'#DEFAULT#:language-markup'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'&lt;i class="material-icons">add&lt;/i>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8709126702470679703)
,p_plug_name=>'Examples'
,p_parent_plug_id=>wwv_flow_api.id(9087177644670220220)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row icon-container">',
'            <br><br>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">info_outline</i><span>info_outline</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">input</i><span>input</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">invert_colors</i><span>invert_colors</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">label</i><span>label</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">label_outline</i><span>label_outline</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">language</i><span>language</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">query_builder</i><span>query_builder</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">perm_identity</i><span>perm_identity</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">perm_media</i><span>perm_media</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">perm_phone_msg</i><span>perm_phone_msg</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">perm_scan_wifi</i><span>perm_scan_wifi</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">picture_in_picture</i><span>picture_in_picture</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">play_for_work</i><span>play_for_work</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">polymer</i><span>polymer</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">power_settings_new</i><span>power_settings_new</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">print</i><span>print</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">thumb_down</i><span>thumb_down</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">thumb_up</i><span>thumb_up</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">thumbs_up_down</i><span>thumbs_up_down</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">email</i><span>email</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">dialpad</i><span>dialpad</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">dialer_sip</i><span>dialer_sip</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">contacts</i><span>contacts</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">forward_5</i><span>forward_5</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">stay_current_portrait</i><span>stay_current_portrait</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">stay_primary_landscape</i><span>stay_primary_landscape</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">stay_primary_portrait</i><span>stay_primary_portrait</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">swap_calls</i><span>swap_calls</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">textsms</i><span>textsms</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">voicemail</i><span>voicemail</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">vpn_key</i><span>vpn_key</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">group_work</i><span>group_work</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">grade</i><span>grade</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">clear_all</i><span>clear_all</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">chat_bubble_outline</i><span>chat_bubble_outline</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">chat_bubble</i><span>chat_bubble</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">repeat</i><span>repeat</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">repeat_one</i><span>repeat_one</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">replay</i><span>replay</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">replay_10</i><span>replay_10</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">replay_30</i><span>replay_30</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">replay_5</i><span>replay_5</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">shuffle</i><span>shuffle</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">skip_next</i><span>skip_next</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">skip_previous</i><span>skip_previous</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">contact_phone</i><span>contact_phone</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">comment</i><span>comment</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">recent_actors</i><span>recent_actors</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">snooze</i><span>snooze</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">sort_by_alpha</i><span>sort_by_alpha</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">stop</i><span>stop</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">subtitles</i><span>subtitles</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">surround_sound</i><span>surround_sound</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">web</i><span>web</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">volume_up</i><span>volume_up</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">volume_off</i><span>volume_off</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">volume_mute</i><span>volume_mute</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">toc</i><span>toc</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">today</i><span>today</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">toll</i><span>toll</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">track_changes</i><span>track_changes</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">translate</i><span>translate</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">trending_down</i><span>trending_down</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">question_answer</i><span>question_answer</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">receipt</i><span>receipt</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">done</i><span>done</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">tab</i><span>tab</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">tab_unselected</i><span>tab_unselected</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">theaters</i><span>theaters</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">hd</i><span>hd</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">games</i><span>games</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">hearing</i><span>hearing</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_module</i><span>view_module</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_list</i><span>view_list</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_remote</i><span>settings_remote</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_voice</i><span>settings_voice</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">search</i><span>search</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings</i><span>settings</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_applications</i><span>settings_applications</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_backup_restore</i><span>settings_backup_restore</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_bluetooth</i><span>settings_bluetooth</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_brightness</i><span>settings_brightness</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_cell</i><span>settings_cell</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_ethernet</i><span>settings_ethernet</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_input_antenna</i><span>settings_input_antenna</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">trending_flat</i><span>trending_flat</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">trending_up</i><span>trending_up</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">work</i><span>work</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">youtube_searched_for</i><span>youtube_searched_for</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">zoom_in</i><span>zoom_in</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">my_location</i><span>my_location</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">visibility_off</i><span>visibility_off</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">visibility</i><span>visibility</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_week</i><span>view_week</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_stream</i><span>view_stream</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_quilt</i><span>view_quilt</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">video_library</i><span>video_library</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">videocam</i><span>videocam</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">videocam_off</i><span>videocam_off</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">volume_down</i><span>volume_down</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_overscan</i><span>settings_overscan</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_input_svideo</i><span>settings_input_svideo</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_input_hdmi</i><span>settings_input_hdmi</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_input_composite</i><span>settings_input_composite</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_input_component</i><span>settings_input_component</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">launch</i><span>launch</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">perm_device_information</i><span>perm_device_information</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">perm_data_setting</i><span>perm_data_setting</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">zoom_out</i><span>zoom_out</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">alarm_on</i><span>alarm_on</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">dns</i><span>dns</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">redeem</i><span>redeem</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">reorder</i><span>reorder</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">report_problem</i><span>report_problem</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">restore</i><span>restore</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">room</i><span>room</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">schedule</i><span>schedule</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">movie</i><span>movie</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">android</i><span>android</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">announcement</i><span>announcement</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">mic_off</i><span>mic_off</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">mic_none</i><span>mic_none</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">swap_horiz</i><span>swap_horiz</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">swap_vert</i><span>swap_vert</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">swap_vertical_circle</i><span>swap_vertical_circle</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">system_update_alt</i><span>system_update_alt</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">subtitles</i><span>subtitles</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">present_to_all</i><span>present_to_all</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">portable_wifi_off</i><span>portable_wifi_off</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">phonelink_setup</i><span>phonelink_setup</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">phonelink_ring</i><span>phonelink_ring</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">phonelink_lock</i><span>phonelink_lock</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">phonelink_erase</i><span>phonelink_erase</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">person_pin</i><span>person_pin</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">navigation</i><span>navigation</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">new_releases</i><span>new_releases</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">not_interested</i><span>not_interested</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">pause</i><span>pause</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">pause_circle_filled</i><span>pause_circle_filled</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">pause_circle_outline</i><span>pause_circle_outline</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">play_arrow</i><span>play_arrow</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">play_circle_filled</i><span>play_circle_filled</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">play_circle_outline</i><span>play_circle_outline</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">playlist_add</i><span>playlist_add</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">queue</i><span>queue</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">queue_music</i><span>queue_music</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">radio</i><span>radio</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">class</i><span>class</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">code</i><span>code</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">credit_card</i><span>credit_card</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">dashboard</i><span>dashboard</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">delete</i><span>delete</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">description</i><span>description</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">open_with</i><span>open_with</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">pageview</i><span>pageview</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">payment</i><span>payment</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">perm_camera_mic</i><span>perm_camera_mic</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">perm_contact_calendar</i><span>perm_contact_calendar</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">airplay</i><span>airplay</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">done_all</i><span>done_all</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">phone</i><span>phone</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">no_sim</i><span>no_sim</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">invert_colors_off</i><span>invert_colors_off</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">chat</i><span>chat</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">call_split</i><span>call_split</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">call_received</i><span>call_received</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">call_missed</i><span>call_missed</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">call_merge</i><span>call_merge</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">call_made</i><span>call_made</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">call_end</i><span>call_end</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">call</i><span>call</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">business</i><span>business</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">stop</i><span>stop</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">sort_by_alpha</i><span>sort_by_alpha</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">snooze</i><span>snooze</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">comment</i><span>comment</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">clear_all</i><span>clear_all</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">chat_bubble_outline</i><span>chat_bubble_outline</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">chat_bubble</i><span>chat_bubble</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">alarm_off</i><span>alarm_off</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">message</i><span>message</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">location_on</i><span>location_on</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">location_off</i><span>location_off</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">live_help</i><span>live_help</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">album</i><span>album</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">av_timer</i><span>av_timer</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">closed_caption</i><span>closed_caption</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">equalizer</i><span>equalizer</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">turned_in_not</i><span>turned_in_not</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">verified_user</i><span>verified_user</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_agenda</i><span>view_agenda</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_array</i><span>view_array</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_carousel</i><span>view_carousel</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_column</i><span>view_column</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">subject</i><span>subject</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">supervisor_account</i><span>supervisor_account</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_power</i><span>settings_power</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">shop</i><span>shop</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">shop_two</i><span>shop_two</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">shopping_basket</i><span>shopping_basket</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">shopping_cart</i><span>shopping_cart</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">speaker_notes</i><span>speaker_notes</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">spellcheck</i><span>spellcheck</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">star_rate</i><span>star_rate</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">stars</i><span>stars</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">store</i><span>store</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">ring_volume</i><span>ring_volume</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">speaker_phone</i><span>speaker_phone</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">stay_current_landscape</i><span>stay_current_landscape</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">forum</i><span>forum</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">import_export</i><span>import_export</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">open_in_browser</i><span>open_in_browser</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">open_in_new</i><span>open_in_new</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">forward_30</i><span>forward_30</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">turned_in</i><span>turned_in</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_headline</i><span>view_headline</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">view_day</i><span>view_day</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">warning</i><span>warning</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">error_outline</i><span>error_outline</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">error</i><span>error</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">add_alert</i><span>add_alert</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">settings_phone</i><span>settings_phone</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">forward_10</i><span>forward_10</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">fast_rewind</i><span>fast_rewind</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">fast_forward</i><span>fast_forward</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">explicit</i><span>explicit</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">list</i><span>list</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">lock</i><span>lock</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">lock_open</i><span>lock_open</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">lock_outline</i><span>lock_outline</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">loyalty</i><span>loyalty</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">markunread_mailbox</i><span>markunread_mailbox</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">note_add</i><span>note_add</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">offline_pin</i><span>offline_pin</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">http</i><span>http</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">mic</i><span>mic</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">loop</i><span>loop</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">library_music</i><span>library_music</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">library_books</i><span>library_books</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">library_add</i><span>library_add</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">high_quality</i><span>high_quality</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">surround_sound</i><span>surround_sound</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">info</i><span>info</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">https</i><span>https</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">aspect_ratio</i><span>aspect_ratio</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">assessment</i><span>assessment</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">assignment</i><span>assignment</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">assignment_ind</i><span>assignment_ind</span></div>',
'          <div class="icon-preview col s6 m3"><i class="material-icons dp48">assignment_late</i><span>assignment_late</span></div>',
'',
'',
'          </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
begin
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087177852070220223)
,p_plug_name=>'Size'
,p_parent_plug_id=>wwv_flow_api.id(9087177644670220220)
,p_region_template_options=>'#DEFAULT#:flow-text-region:h4:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>To control the size of the icon, change the preset classes as shown below.</p>',
'',
'<div class="row">',
'  <div class="center-align">',
'    <div class="col s3"><i class="material-icons tiny icon-demo">insert_chart</i><br><span>Tiny</span></div>',
'    <div class="col s3"><i class="material-icons small icon-demo">insert_chart</i><br><span>Small</span></div>',
'    <div class="col s3"><i class="material-icons medium icon-demo">insert_chart</i><br><span>Medium</span></div>',
'    <div class="col s3"><i class="material-icons large icon-demo">insert_chart</i><br><span>Large</span></div>',
'  </div>',
'</div>'))
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9087182854537230912)
,p_plug_name=>'Icons'
,p_region_template_options=>'#DEFAULT#:flow-text-region:h1:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>We have included 740 Material Design Icons courtesy of Google. You can download them directly from the <a href="https://github.com/google/material-design-icons">Material Design specs</a>.</p>'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Navbar'
,p_alias=>'NAVBAR'
,p_page_mode=>'NORMAL'
,p_step_title=>'Navbar'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210227'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213805593409620810)
,p_plug_name=>'Navbar'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>The navbar is fully contained by an HTML5 Nav tag. Inside a recommended container div, there are 2 main parts of the navbar. A logo or brand link, and the navigations links. You can align these links to the left or right.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213805750142620811)
,p_plug_name=>'Centering the logo'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>The logo will center itself on medium and down screens, but if you want the logo to always be centered, you can use the "Center Logo" template option on the page template. You will have to make sure yourself that links do not overlap if you use th'
||'is.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8216472038187624362)
,p_plug_name=>'Fixed Navbar'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>To make the navbar fixed, choose the "Fixed Navbar" template option on the page template. This will offset your other content while making your nav fixed. You can adjust the height of this outer div in the Sass variables to change how much offset '
||'is on your content.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8216483241157655204)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8216472102352624363)
,p_name=>'P27_DOC2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8216483241157655204)
,p_prompt=>'List Entries'
,p_source=>'&PATH.img/docs-navbar-2.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'You will have to change your list entries yourself.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8216483549541655209)
,p_name=>'P27_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8216483241157655204)
,p_prompt=>'Navbar Settings'
,p_source=>'&PATH.img/docs-navbar-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Your Navbar is set automatically by the User Interface settings. You can change the Template Options from there.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Preloader'
,p_alias=>'PRELOADER'
,p_page_mode=>'NORMAL'
,p_step_title=>'Preloader'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213804042851620794)
,p_plug_name=>'Preloader'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>If you have content that will take a long time to load, you should give the user feedback. For this reason we provide a number activity + progress indicators.</p>',
'',
'<p>These are just plain region templates. You should use them along with a hide / show dynamic action.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213804157375620795)
,p_plug_name=>'Linear'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213804260548620797)
,p_plug_name=>'{linear}'
,p_parent_plug_id=>wwv_flow_api.id(8213804157375620795)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(8215665968451126746)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213804258462620796)
,p_plug_name=>'Circular'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8213804362828620798)
,p_plug_name=>'{circular}'
,p_parent_plug_id=>wwv_flow_api.id(8213804258462620796)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(8215732480435136349)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Pagination'
,p_page_mode=>'NORMAL'
,p_step_title=>'Pagination'
,p_step_sub_title=>'Pagination'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210239'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4571812937288624377)
,p_plug_name=>'Pagination'
,p_region_template_options=>'#DEFAULT#:flow-text-region:h1:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Add pagination links to help split up your long content into shorter, easier to understand blocks.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4571813386974624379)
,p_name=>'Basic'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:scrollspy:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'SELECT ENAME, JOB, SAL FROM EMP, dept'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9090634527809844626)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'SEARCH_ENGINE'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4571813765793624380)
,p_query_column_id=>1
,p_column_alias=>'ENAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4571814169765624381)
,p_query_column_id=>2
,p_column_alias=>'JOB'
,p_column_display_sequence=>2
,p_column_heading=>'Job'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4571814563961624381)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4571819719318624387)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4571820154452624387)
,p_name=>'P29_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4571819719318624387)
,p_prompt=>'Report Attributes - Template Options'
,p_source=>'&PATH.img/docs-pagination-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Select your ''Report Attributes''. Under the pagination section, "Search engine" is the only one supported at the moment.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Collapsible'
,p_alias=>'COLLAPSIBLE'
,p_page_mode=>'NORMAL'
,p_step_title=>'Collapsible'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210342'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793867817745470376)
,p_plug_name=>'Collapsible'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Collapsibles are accordion elements that expand when clicked on. They allow you to hide content that is not immediately relevant to the user.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7793867887158470377)
,p_name=>'{collapsible}'
,p_parent_plug_id=>wwv_flow_api.id(7793867817745470376)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_component_template_options=>'#DEFAULT#:accordion'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''filter_drama'' icon_css_classes',
'        ,''First'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''place'' icon_css_classes',
'        ,''Second'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''whatshot'' icon_css_classes',
'        ,''Third'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(8062881798324256540)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793868881183470387)
,p_query_column_id=>1
,p_column_alias=>'ICON_CSS_CLASSES'
,p_column_display_sequence=>2
,p_column_heading=>'Icon css classes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793868279684470381)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793868983611470388)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793880133824470399)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(7793867817745470376)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''filter_drama'' icon_css_classes',
'        ,''First'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''place'' icon_css_classes',
'        ,''Second'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''whatshot'' icon_css_classes',
'        ,''Third'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793879098636470389)
,p_plug_name=>'Options'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>There are two ways a collapsible can behave. It can either allow multiple sections to stay open, or it can only allow one section to stay open at a time, which is called an accordion. See below for a demo of each type.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7793879276914470391)
,p_name=>'Accordion'
,p_parent_plug_id=>wwv_flow_api.id(7793879098636470389)
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#:accordion'
,p_grid_column_css_classes=>'m6'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''filter_drama'' icon_css_classes',
'        ,''First'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''place'' icon_css_classes',
'        ,''Second'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''whatshot'' icon_css_classes',
'        ,''Third'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(8062881798324256540)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793879558008470393)
,p_query_column_id=>1
,p_column_alias=>'ICON_CSS_CLASSES'
,p_column_display_sequence=>2
,p_column_heading=>'Icon css classes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793879448788470392)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793879625107470394)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7793879705533470395)
,p_name=>'Expandable'
,p_parent_plug_id=>wwv_flow_api.id(7793879098636470389)
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#:expandable'
,p_new_grid_row=>false
,p_grid_column_css_classes=>'m6'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''filter_drama'' icon_css_classes',
'        ,''First'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''place'' icon_css_classes',
'        ,''Second'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''whatshot'' icon_css_classes',
'        ,''Third'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(8062881798324256540)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793879913516470397)
,p_query_column_id=>1
,p_column_alias=>'ICON_CSS_CLASSES'
,p_column_display_sequence=>2
,p_column_heading=>'Icon css classes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793879840068470396)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7793879996546470398)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793880162993470400)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459534605487045977)
,p_plug_name=>'Popout'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>To create a popout collapsible, just add the popout template option.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8459534744547045978)
,p_name=>'{collapsible}'
,p_parent_plug_id=>wwv_flow_api.id(8459534605487045977)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_component_template_options=>'#DEFAULT#:popout:accordion'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''filter_drama'' icon_css_classes',
'        ,''First'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''place'' icon_css_classes',
'        ,''Second'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''whatshot'' icon_css_classes',
'        ,''Third'' title',
'        ,''Lorem ipsum dolor sit amet.'' description',
'FROM     dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(8062881798324256540)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8459534915718045980)
,p_query_column_id=>1
,p_column_alias=>'ICON_CSS_CLASSES'
,p_column_display_sequence=>2
,p_column_heading=>'Icon css classes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8459534852729045979)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8459535000501045981)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7793880313583470401)
,p_name=>'P30_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7793880162993470400)
,p_prompt=>'Template Options'
,p_source=>'&PATH.img/docs-collapsible-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Collapsible reports must have the following report template. You can a template option for accordion or expanded?'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Dialogs'
,p_alias=>'DIALOGS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Dialogs'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210249'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632092037807937276)
,p_plug_name=>'Dialogs'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Dialogs are content that are not original visible on a page but show up with extra information if needed. The transitions should make the appearance of the dialog make sense and not jarring to the user.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632092148962937277)
,p_plug_name=>'Toast'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>We provide an easy way for you to send unobtrusive alerts to your users through toasts. These toasts are also placed and sized responsively, try it out by clicking the button below on different device sizes.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632092307743937279)
,p_plug_name=>'{note}'
,p_parent_plug_id=>wwv_flow_api.id(7632092148962937277)
,p_region_template_options=>'#DEFAULT#:hide-title:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>To do this, just call the <code>Material APEX - Toast</code> Dynamic action.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632092417577937280)
,p_plug_name=>'Styling your toasts'
,p_parent_plug_id=>wwv_flow_api.id(7632092148962937277)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>We''ve added the ability to customize your toasts easily. You can pass in classes as an optional parameter into the toast function. We''ve added a rounded class for you, but you can create your own CSS classes and apply them to toasts. Checkout out '
||'our full example below.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632092564409937282)
,p_plug_name=>'Callback'
,p_parent_plug_id=>wwv_flow_api.id(7632092148962937277)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>You can have the toast callback a function when it has been dismissed.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632092953045937285)
,p_plug_name=>'Tooltip'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Tooltips are small, interactive, textual hints for mainly graphical elements. When using icons for actions you can use a tooltip to give people clarification on its function.</p>',
'',
'<p>Hover on the label or the icon below to try it out. Any APEX item help text automatically triggers the tooltip behavior.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7632092165557937278)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7632092307743937279)
,p_button_name=>'TOAST'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Toast!'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7632092466776937281)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7632092417577937280)
,p_button_name=>'TOAST2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Toast!'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7632092673626937283)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7632092564409937282)
,p_button_name=>'TOAST3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Toast!'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7632093057580937286)
,p_name=>'P31_TOOLTIP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7632092953045937285)
,p_prompt=>'Tooltipped Input'
,p_pre_element_text=>'<i class="material-icons prefix">info</i>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'I am a tooltip'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7793880384784470402)
,p_name=>'P31_DOC1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7632092953045937285)
,p_prompt=>'Help Text'
,p_source=>'&PATH.img/docs-tooltip-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19287756193175585909)
,p_name=>'onClick TOAST'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7632092165557937278)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19287756285219585910)
,p_event_id=>wwv_flow_api.id(19287756193175585909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MATERIAL.APEX.TOAST'
,p_attribute_01=>'I am a toast'
,p_attribute_02=>'4000'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19287756303132585911)
,p_name=>'onClick TOAST2'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7632092466776937281)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19287756408214585912)
,p_event_id=>wwv_flow_api.id(19287756303132585911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MATERIAL.APEX.TOAST'
,p_attribute_01=>'I am a rounded toast'
,p_attribute_02=>'4000'
,p_attribute_03=>'rounded'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19287756583530585913)
,p_name=>'onClick TOAST3'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7632092673626937283)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19287756658916585914)
,p_event_id=>wwv_flow_api.id(19287756583530585913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MATERIAL.APEX.TOAST'
,p_attribute_01=>'This toast triggers an alert'
,p_attribute_02=>'3000'
,p_attribute_04=>'alert(''Your toast was dismissed'')'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Dropdown'
,p_alias=>'DROPDOWN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Dropdown'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210352'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9584060733540662325)
,p_plug_name=>'Dropdown'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Add a dropdown list to any button.</p>',
'',
'<p>In APEX, this is usable as a report, along with template "Report - Dropdown Content". The following SQL structure must be respected.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9584071006160710862)
,p_name=>'My Dropdown'
,p_region_name=>'dropdown1'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:hide-title:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , null badge',
'      , null new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(8137824445990040459)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137639475122979069)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>1
,p_column_heading=>'Display'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137639631356979070)
,p_query_column_id=>2
,p_column_alias=>'TARGET'
,p_column_display_sequence=>2
,p_column_heading=>'Target'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137639709927979071)
,p_query_column_id=>3
,p_column_alias=>'BADGE'
,p_column_display_sequence=>3
,p_column_heading=>'Badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8137639787429979072)
,p_query_column_id=>4
,p_column_alias=>'NEW_BADGE'
,p_column_display_sequence=>4
,p_column_heading=>'New badge'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8138638446813243952)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(9584071006160710862)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , null badge',
'      , null new_badge',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9776546053996919254)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9776646350818919259)
,p_name=>'P32_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9776546053996919254)
,p_prompt=>'Dropdown name'
,p_source=>'&PATH.img/docs-dropdown-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The title you give to your report region will be the name of dropdown.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Media'
,p_alias=>'JSMEDIA'
,p_page_mode=>'NORMAL'
,p_step_title=>'Media'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210604'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632091408243937270)
,p_plug_name=>'Material Box'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Material box is a material design implementation of the Lightbox plugin. When a user clicks on an image that can be enlarged. Material box centers the image and enlarges it in a smooth, non-jarring manner. To dismiss the image, the user can either'
||' click on the image again, scroll away, or press the ESC key.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632091476059937271)
,p_plug_name=>'Media'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Media components include things that have to do with large media objects like Images, Video, Audio, etc.<p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632091797918937274)
,p_plug_name=>'Slider'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Our slider is a simple and elegant image carousel. You can also have captions that will be transitioned on their own depending on their alignment. You can also have indicators that show up on the bottom of the slider.</p>',
'',
'<p>Note: This is also mobile friendly! Try swiping with your finger to scroll through the slider.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7656154147637233422)
,p_name=>'{slider}'
,p_parent_plug_id=>wwv_flow_api.id(7632091797918937274)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''<img src="&PATH.img/office.jpg">'' img',
'        ,''This is our 1st Tagline!'' title',
'        ,''Here''''s our 1st slogan.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''<img src="&PATH.img/sample-1.jpg">'' img',
'        ,''This is our 2nd Tagline!'' title',
'        ,''Here''''s our 2nd slogan.'' description',
'FROM     dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7656016396896178679)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7632091941773937275)
,p_query_column_id=>1
,p_column_alias=>'IMG'
,p_column_display_sequence=>1
,p_column_heading=>'Img'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7656155256413233426)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7632091678334937273)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459534298790045974)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(7632091797918937274)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''&lt;img src="&PATH.img/office.jpg">'' img',
'        ,''This is our 1st Tagline!'' title',
'        ,''Here''''s our 1st slogan.'' description',
'FROM     dual',
'',
'UNION ALL',
'',
'SELECT ''&lt;img src="&PATH.img/sample-1.jpg">'' img',
'        ,''This is our 2nd Tagline!'' title',
'        ,''Here''''s our 2nd slogan.'' description',
'FROM     dual'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793866722522470365)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793866970594470368)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7655893138098163838)
,p_name=>'P33_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7632091408243937270)
,p_source=>'&PATH.img/sample-1.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7793866832677470366)
,p_name=>'P33_DOC2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7793866722522470365)
,p_prompt=>'Template Option'
,p_source=>'&PATH.img/docs-materialbox-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7793866893267470367)
,p_name=>'P33_DOC3'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7793866722522470365)
,p_prompt=>'Image Template'
,p_source=>'&PATH.img/docs-materialbox-2.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7793867096247470369)
,p_name=>'P33_DOC4'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7793866970594470368)
,p_prompt=>'List Template'
,p_source=>'&PATH.img/docs-slider-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Modals'
,p_alias=>'MODALS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Modals'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210548'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1056357884706627338)
,p_plug_name=>'Bottom Sheet'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Try this one.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4170464830488881141)
,p_name=>'Bottom Sheet Modal'
,p_region_name=>'bottom-sheet-demo'
,p_template=>wwv_flow_api.id(4170487165352055150)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:bottom-sheet'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_06'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ename display',
'      , ''#'' target',
'      , null button_css_classes',
'      , ''send'' icon_css_classes',
'FROM    emp',
'WHERE   rownum <= 5'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9652148565941067451)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4170465161852881143)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>1
,p_column_heading=>'Employee Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4170465599889881144)
,p_query_column_id=>2
,p_column_alias=>'TARGET'
,p_column_display_sequence=>2
,p_column_heading=>' '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4170465974341881144)
,p_query_column_id=>3
,p_column_alias=>'BUTTON_CSS_CLASSES'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4170466309579881144)
,p_query_column_id=>4
,p_column_alias=>'ICON_CSS_CLASSES'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8427875299412266762)
,p_plug_name=>'Modals'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Use a modal for dialog boxes, confirmation messages, or other content that can be called up. In order for the modal to work you have to add the Modal ID to the link of the trigger. To add a close button, just add the class .modal-close to your but'
||'ton.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459533509910045966)
,p_plug_name=>'Fixed Footer'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>If you have content that is very long and you want the action buttons to be visible all the time, you can add the "Fixed Footer" template option to the modal page template.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8492085081858206483)
,p_plug_name=>'Notes'
,p_parent_plug_id=>wwv_flow_api.id(8459533509910045966)
,p_region_template_options=>'#DEFAULT#:apex-materialbox:h3:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1056357970959627339)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1056357884706627338)
,p_button_name=>'MODAL_BOTTOM_SHEET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Modal Bottom Sheet'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8459533755687045968)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8459533509910045966)
,p_button_name=>'MODAL_FIXED_FOOTER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Modal Fixed Footer'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8427875446225266763)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8427875299412266762)
,p_button_name=>'MODAL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Modal Standard'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8492085374181206493)
,p_name=>'P34_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8492085081858206483)
,p_prompt=>'Modal Page - Template Options'
,p_source=>'&PATH.img/docs-modal-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Select this template option to have a fixed footer on your modal page.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4110375906260470539)
,p_name=>'Open Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1056357970959627339)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4110376063025470540)
,p_event_id=>wwv_flow_api.id(4110375906260470539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#bottom-sheet-demo'').openModal();'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Parallax'
,p_alias=>'PARALLAX'
,p_page_mode=>'NORMAL'
,p_step_title=>'Parallax'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210501'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9090650930486488696)
,p_plug_name=>'{Parallax Image}'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9090651233536497525)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img src="&PATH.img/parallax1.jpg">'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9090651540145538843)
,p_plug_name=>'{Parallax Image}'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9090651233536497525)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img src="&PATH.img/parallax2.jpg">'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9090652645911606719)
,p_plug_name=>'Parallax'
,p_region_template_options=>'#DEFAULT#:container:h2:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Parallax is an effect where the background content or image in this case, is moved at a different speed than the foreground content while scrolling.</p>',
'',
'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam purus nunc, eleifend eu urna non, pretium congue elit. Aliquam at urna eros. Donec in porta nibh, ac consectetur orci. Praesent id eros vel enim malesuada ultricies. Donec sagittis lor'
||'em non gravida posuere. In efficitur leo sed dui semper, at porta felis condimentum. Integer interdum nibh dui, vitae dictum nisi volutpat at. Etiam id dictum orci. Aenean ut dui eleifend mi gravida dapibus at at neque.</p>',
'',
'<p>Proin a elit purus. Mauris blandit sem in sapien bibendum sagittis. Integer eget lectus imperdiet, laoreet mauris in, faucibus orci. Donec interdum justo felis, vel imperdiet ex imperdiet in. Donec eget gravida eros, ac aliquet nisi. Aenean sed ri'
||'sus lacus. Nullam mattis enim in mi fringilla aliquam. Maecenas vulputate urna a velit consectetur, sed luctus velit vestibulum.</p>',
'',
'<p>Proin vehicula dui id vehicula fermentum. Maecenas aliquet purus a lorem porta luctus. Praesent tristique iaculis est ac scelerisque. Duis laoreet iaculis nibh, sit amet dictum lorem egestas eu. Nunc bibendum at magna sed sollicitudin. Cras et arc'
||'u erat. Nullam sollicitudin faucibus egestas. Cras maximus id lectus vel mattis. Suspendisse accumsan gravida velit, nec dignissim lectus pharetra in. Cras malesuada arcu lectus, eget dignissim orci condimentum ut. Suspendisse velit turpis, elementum'
||' at lacinia quis, pretium eget augue.</p>',
'',
'<p>Morbi ultricies, nisi quis posuere consectetur, metus est consequat risus, in auctor tortor sem eget lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed sit amet accumsan nisi. Aenean tempus eu risus'
||' ut pharetra. Sed ac orci non turpis efficitur molestie. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas ac mi vel mauris lacinia vulputate eget ac leo. Aenean quis euismod nibh, non finibus tortor. Ma'
||'ecenas vehicula tincidunt sagittis. Nunc odio lectus, lobortis et lectus condimentum, sagittis facilisis erat. Maecenas malesuada aliquet lorem et venenatis. Sed gravida tortor venenatis varius laoreet. Praesent nulla mauris, sodales et lobortis eu, '
||'varius quis lacus.</p>',
'',
'<p>Morbi nec mauris a arcu faucibus elementum. Maecenas sit amet gravida velit. Cras imperdiet libero non dolor tristique, vel mattis augue tincidunt. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pelle'
||'ntesque malesuada lorem pellentesque velit rhoncus molestie. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum efficitur sem arcu, at ornare nibh ornare sit amet.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9776869387600008895)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:container:apex-materialbox:h3:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9776869622544008896)
,p_name=>'P35_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9776869387600008895)
,p_prompt=>'Page Template Options - Uncheck Container'
,p_source=>'&PATH.img/docs-parallax-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'You will have to uncheck the container option for the page template.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9776870568141008897)
,p_name=>'P35_DOC2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9776869387600008895)
,p_prompt=>'Parallax Image'
,p_source=>'&PATH.img/docs-parallax-2.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9776871495552008898)
,p_name=>'P35_DOC3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9776869387600008895)
,p_prompt=>'Parallax Content'
,p_source=>'&PATH.img/docs-parallax-3.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Check the container option for the regions that are not part of the parallax effect.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Pushpin'
,p_alias=>'PUSHPIN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Pushpin'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125210100'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632091039207937266)
,p_plug_name=>'Pushpin'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Pushpin is our fixed positioning plugin. As you scroll down, the component stays visible.</p>',
'',
'<p>You can check out our live examples: the fixed Table of Contents on the right.</p>',
'',
'<p>This is handled automatically by APEX as soon as you have a Scrollspy region, but here''s the code in case you want to implement it manually elsewhere.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632091082307937267)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(7632091039207937266)
,p_region_template_options=>'#DEFAULT#:language-javascript'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(document).ready(function(){',
'    if ($(''.table-of-contents'').length > 0) {',
'    	$(''.table-of-contents'').pushpin({ top: $(''.tabs-wrapper'').offset().top });',
'    }',
'});'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8496360589376292865)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8496360927923292866)
,p_name=>'P36_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8496360589376292865)
,p_prompt=>'Region - Template Options'
,p_source=>'&PATH.img/docs-scrollspy-3.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The Scrollspy with automatically activate when you select this template option on your page.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_api.create_page(
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Scrollspy'
,p_alias=>'SCROLLSPY'
,p_page_mode=>'NORMAL'
,p_step_title=>'Scrollspy'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125202911'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632090615475937262)
,p_plug_name=>'Scrollspy'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Scrollspy is a jQuery plugin that tracks certain elements and which element the user''s screen is currently centered on. Our main demo of this is our table of contents on every documentation page to the right. Clicking on these links will also scro'
||'ll the page to that element.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793826032290432816)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:flow-text-region:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Any region with the Scrollspy template option within APEX will automatically activate the scrollspy menu on your page with a list on page 0.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459534162449045973)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(7793826032290432816)
,p_region_template_options=>'#DEFAULT#:language-sql'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT 	null',
'		,apr.region_name',
'        ,''#'' || nvl(apr.static_id, ''R'' || apr.region_id) r',
'FROM 	apex_application_page_regions apr ',
'JOIN 	apex_appl_template_options ato',
'	ON 	ato.region_template_id	= apr.template_id',
'WHERE 	apr.application_id 		= :APP_ID',
'AND 	apr.page_id 			= :APP_PAGE_ID',
'AND		ato.name 				= ''SCROLLSPY''',
'AND	apr.region_template_options like ''%:'' || ato.css_classes || '':%''',
'ORDER BY apr.display_sequence'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7793857618941449405)
,p_name=>'P37_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7793826032290432816)
,p_prompt=>'Region Position'
,p_source=>'&PATH.img/docs-scrollspy-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Region Position 3 must be selected on page 0.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7793866386094470362)
,p_name=>'P37_DOC2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7793826032290432816)
,p_prompt=>'List Template'
,p_source=>'&PATH.img/docs-scrollspy-2.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The list template must be the following.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7793866486391470363)
,p_name=>'P37_DOC3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7793826032290432816)
,p_prompt=>'Template Option'
,p_source=>'&PATH.img/docs-scrollspy-3.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Any region with the Scrollspy template option will automatically activate the scrollspy menu on your page.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'SideNav'
,p_alias=>'SIDENAV'
,p_page_mode=>'NORMAL'
,p_step_title=>'SideNav'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125202850'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632090793983937264)
,p_plug_name=>'SideNav'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>The menu to the left is a slide out menu. Is should be used on Page 0 along with a list.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7632090860313937265)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7793866614552470364)
,p_name=>'P38_DOC2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7632090860313937265)
,p_prompt=>'List Template'
,p_source=>'&PATH.img/docs-sidenav-2.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'You must change the SideNav list yourself.'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7794005247962527377)
,p_name=>'P38_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7632090860313937265)
,p_prompt=>'Region Position'
,p_source=>'&PATH.img/docs-sidenav-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The SideNav is handled automatically by the User Interface settings. Template Options can be changed from there.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Tabs'
,p_alias=>'TABS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Tabs'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110376347856470543)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>The tabs structure consists of an unordered list of tabs that have hashes corresponding to tab ids. Then when you click on each tab, only the container with the corresponding tab id will become visible.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110376486355470544)
,p_plug_name=>'Example'
,p_parent_plug_id=>wwv_flow_api.id(4110376347856470543)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(4176389807623949556)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(4176182270720072399)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110376544845470545)
,p_plug_name=>'{tab1}'
,p_region_name=>'tab1'
,p_parent_plug_id=>wwv_flow_api.id(4110376486355470544)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Second content'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110376663703470546)
,p_plug_name=>'{tab3}'
,p_region_name=>'tab3'
,p_parent_plug_id=>wwv_flow_api.id(4110376486355470544)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Third content'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110376744476470547)
,p_plug_name=>'{tab2}'
,p_region_name=>'tab2'
,p_parent_plug_id=>wwv_flow_api.id(4110376486355470544)
,p_region_template_options=>'#DEFAULT#:hide-title:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from emp'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(13297237331503986234)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'VINCENT.MORNEAU@GMAIL.COM'
,p_internal_uid=>13297237331503986234
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13297237410720986235)
,p_db_column_name=>'EMPNO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Empno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13297237589891986236)
,p_db_column_name=>'ENAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ename'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13297237661344986237)
,p_db_column_name=>'JOB'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Job'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13297237757131986238)
,p_db_column_name=>'MGR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mgr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13297237814503986239)
,p_db_column_name=>'HIREDATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13297237929492986240)
,p_db_column_name=>'SAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Sal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13297258028339986241)
,p_db_column_name=>'COMM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Comm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13297258122045986242)
,p_db_column_name=>'DEPTNO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Deptno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19073915101851923662)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'190739152'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110376844073470548)
,p_plug_name=>'{tab4}'
,p_region_name=>'tab4'
,p_parent_plug_id=>wwv_flow_api.id(4110376486355470544)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9087137255068027958)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Fourth content'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110376962996470549)
,p_plug_name=>'jQuery Plugin Methods'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>You can programmatically trigger a tab change with our <code>select_tab</code> method. You have to input the id of the tab you want to switch to. In the case of our demo it would be either tab1, tab2, tab3, or tab4.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4110377045879470550)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(4110376962996470549)
,p_region_template_options=>'#DEFAULT#:language-javascript'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(document).ready(function(){',
'    $(''ul.tabs'').tabs(''select_tab'', ''tab_id'');',
'});'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_api.create_page(
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Waves'
,p_alias=>'WAVES'
,p_page_mode=>'NORMAL'
,p_step_title=>'Waves'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125202832'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8643766404837320079)
,p_plug_name=>'Waves'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Waves is an external library that we''ve included to allow us to create the ink effect outlined in Material Design.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8643766458646320080)
,p_plug_name=>'Available Colors'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>To use these, just add the corresponding class to your button. Play around with changing the background color of buttons and the waves effect to create something cool!</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8643767367132320089)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:scrollspy:apex-materialbox:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8643766551504320081)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8643766458646320080)
,p_button_name=>'BTN1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:white:icon-float-left:black-text:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Default'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8643766708978320082)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8643766458646320080)
,p_button_name=>'BTN2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:teal:lighten-2:icon-float-left:waves-effect waves-light:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Light'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8643766731058320083)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8643766458646320080)
,p_button_name=>'BTN3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:white:icon-float-left:black-text:waves-effect waves-red:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Red'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8643766861300320084)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(8643766458646320080)
,p_button_name=>'BTN4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:white:icon-float-left:black-text:waves-effect waves-yellow:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Yellow'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8643766947806320085)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(8643766458646320080)
,p_button_name=>'BTN5'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:white:icon-float-left:black-text:waves-effect waves-orange:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Orange'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8643767104652320086)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(8643766458646320080)
,p_button_name=>'BTN6'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:white:icon-float-left:black-text:waves-effect waves-purple:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Purple'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8643767156563320087)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(8643766458646320080)
,p_button_name=>'BTN7'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:white:icon-float-left:black-text:waves-effect waves-green:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Green'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8643767264839320088)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(8643766458646320080)
,p_button_name=>'BTN8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:white:icon-float-left:black-text:waves-effect waves-teal:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Teal'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8716419826450980805)
,p_name=>'P40_DOC1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8643767367132320089)
,p_prompt=>'Button Template Options'
,p_source=>'&PATH.img/docs-waves-1.png'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9760004795692810490)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'You can choose from 8 different wave colors. Checking the Wave Effect box is necessary.'
,p_attribute_01=>'URL'
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_api.create_page(
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Mobile'
,p_alias=>'MOBILE'
,p_page_mode=>'NORMAL'
,p_step_title=>'Mobile'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086811452546677430)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793867302904470371)
,p_plug_name=>'Sidenav'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793867399768470372)
,p_plug_name=>'Drag Out Menu'
,p_parent_plug_id=>wwv_flow_api.id(7793867302904470371)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Try swapping this page from left to right to make the menu appear.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793867520218470373)
,p_plug_name=>'Toast'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793867575899470374)
,p_plug_name=>'Swipe to Dismiss'
,p_parent_plug_id=>wwv_flow_api.id(7793867520218470373)
,p_region_template_options=>'#DEFAULT#:h4:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>On all devices, you can swipe to dismiss any toasts component. Go to the <a href="f?p=&APP_ID.:DIALOGS:&SESSION.">JavaScript - Dialog</a> page to try it out.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7793867736112470375)
,p_plug_name=>'Mobile'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Material APEX is 100% responsive. Here are a couple of additional mobile-only features.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_api.create_page(
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Breadcrumbs'
,p_page_mode=>'NORMAL'
,p_step_title=>'Breadcrumbs'
,p_step_sub_title=>'Breadcrumbs'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810943196674788)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19142616641713132402)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Breadcrumbs are a good way to display your current location. This is usually used when you have multiple layers of content.</p>',
'',
'<p>Example is shown above.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19147043722462665600)
,p_plug_name=>'{breadcrumbs}'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_menu_id=>wwv_flow_api.id(19143134059369165622)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(5810619060668674579)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00043
begin
wwv_flow_api.create_page(
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Transitions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Transitions'
,p_step_sub_title=>'Transitions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125202821'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16321031803462868041)
,p_plug_name=>'Staggered List'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Use this to create a staggered reveal effect for a Staggered List Report.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16321031984817868042)
,p_name=>'{staggered list}'
,p_parent_plug_id=>wwv_flow_api.id(16321031803462868041)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''#'' link',
'     , ''List Item'' title',
'     , ''This is a description'' description',
'from dual',
'',
'union all',
'',
'select ''#'' link',
'     , ''List Item'' title',
'     , ''This is a description'' description',
'from dual',
'',
'union all',
'',
'select ''#'' link',
'     , ''List Item'' title',
'     , ''This is a description'' description',
'from dual',
'',
'union all',
'',
'select ''#'' link',
'     , ''List Item'' title',
'     , ''This is a description'' description',
'from dual',
'',
'union all',
'',
'select ''#'' link',
'     , ''List Item'' title',
'     , ''This is a description'' description',
'from dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(19280366119529328214)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16321032021222868043)
,p_query_column_id=>1
,p_column_alias=>'LINK'
,p_column_display_sequence=>1
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16321032143797868044)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16321032260271868045)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16321032600695868049)
,p_plug_name=>'Fade In Image'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Use this to fade in images. It also animates grayscale and brightness to give it a unique effect.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19281555308082444493)
,p_plug_name=>'Transitions'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>We''ve made some custom animation functions that will transition your content. It''s recommended to use this with the ScrollFire Plugin to make your content transition in as you scroll.</p>',
'',
'<p>These effects are achieved using our own Material APEX dynamic action plugins.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321032359363868046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16321031803462868041)
,p_button_name=>'STAGGERED_LIST'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:wave-none'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Click me!'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16321032747315868050)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16321032600695868049)
,p_button_name=>'FADE_IN_IMAGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:wave-none'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Click me!'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19287657669394575233)
,p_name=>'P43_FADE_IN_IMAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16321032600695868049)
,p_prompt=>'Fade In Image'
,p_source=>'&PATH.img/parallax1.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(19287996820552801147)
,p_item_template_options=>'#DEFAULT#:item-fade-in'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16321032433516868047)
,p_name=>'Staggered List'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16321032359363868046)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16321032513474868048)
,p_event_id=>wwv_flow_api.id(16321032433516868047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MATERIAL.APEX.STAGGERED.LIST'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16321031984817868042)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19287755386234585901)
,p_name=>'fadeInImage'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16321032747315868050)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19287755400296585902)
,p_event_id=>wwv_flow_api.id(19287755386234585901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MATERIAL.APEX.FADE.IN.IMAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_FADE_IN_IMAGE'
);
end;
/
prompt --application/pages/page_00044
begin
wwv_flow_api.create_page(
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'ScrollFire'
,p_page_mode=>'NORMAL'
,p_step_title=>'ScrollFire'
,p_step_sub_title=>'ScrollFire'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(9361814551162715062)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160125202810'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19287755991667585907)
,p_plug_name=>'Usage'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>1. Use the template option "Enable ScrollFire" on the component of your choice.</p>',
'<p>2. Add the following two attributes to the component "Custom HTML Attributes"</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19287756050626585908)
,p_plug_name=>'{code}'
,p_parent_plug_id=>wwv_flow_api.id(19287755991667585907)
,p_region_template_options=>'#DEFAULT#:language-markup'
,p_plug_template=>wwv_flow_api.id(8137249185487745518)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'offset="400" callback="apex.event.trigger(document, ''staggeredList'');"'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19324302707222461427)
,p_plug_name=>'ScrollFire'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>ScrollFire is a jQuery Plugin that executes callback functions depending on how far into the page you''ve scrolled. We''ll show you how you can use this plugin with many demos and examples.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19324303121838461428)
,p_plug_name=>'ScrollFire Demo'
,p_region_template_options=>'#DEFAULT#:scrollspy:flow-text-region:h1:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Scroll through slowly to get sense of what ScrollFire can do for you. This is the ScrollFire code that we have used on this page.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19287756718683585915)
,p_plug_name=>'Scroll down here!'
,p_parent_plug_id=>wwv_flow_api.id(19324303121838461428)
,p_region_template_options=>'#DEFAULT#:flow-text-region:h3:enable-scrollfire:left-align:buttons-left'
,p_region_attributes=>'offset="400" callback="apex.event.trigger(document, ''toast1'');"'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Come see what happens when you scroll down here.</p>',
'<br><br><br><br><br><br><br><br><br><br><br><br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19287756817919585916)
,p_plug_name=>'Scroll a little further'
,p_parent_plug_id=>wwv_flow_api.id(19324303121838461428)
,p_region_template_options=>'#DEFAULT#:flow-text-region:h3:enable-scrollfire:left-align:buttons-left'
,p_region_attributes=>'offset="400" callback="apex.event.trigger(document, ''toast2'');"'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Scroll again...</p>',
'<br><br><br><br><br><br><br><br><br><br><br><br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19324301523084461413)
,p_plug_name=>'Fade In Image'
,p_parent_plug_id=>wwv_flow_api.id(19324303121838461428)
,p_region_template_options=>'#DEFAULT#:flow-text-region:h3:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Use this to fade in images. It also animates grayscale and brightness to give it a unique effect.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(19324303946839461429)
,p_name=>'Staggered List'
,p_parent_plug_id=>wwv_flow_api.id(19324303121838461428)
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:flow-text-region:h3:enable-scrollfire:left-align:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'offset="400" callback="apex.event.trigger(document, ''staggeredList'');"'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''#'' link',
'     , ''List Item'' title',
'     , ''This is a description'' description',
'from dual',
'',
'union all',
'',
'select ''#'' link',
'     , ''List Item'' title',
'     , ''This is a description'' description',
'from dual',
'',
'union all',
'',
'select ''#'' link',
'     , ''List Item'' title',
'     , ''This is a description'' description',
'from dual',
'',
'union all',
'',
'select ''#'' link',
'     , ''List Item'' title',
'     , ''This is a description'' description',
'from dual',
'',
'union all',
'',
'select ''#'' link',
'     , ''List Item'' title',
'     , ''This is a description'' description',
'from dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(19280366119529328214)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19324304394655461433)
,p_query_column_id=>1
,p_column_alias=>'LINK'
,p_column_display_sequence=>1
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19324304741673461434)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19324305187218461434)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19324302362809461422)
,p_name=>'P44_FADE_IN_IMAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19324301523084461413)
,p_prompt=>'Fade In Image'
,p_source=>'&PATH.img/parallax1.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'offset="500" callback="apex.event.trigger(document, ''fadeInImage'');"'
,p_field_template=>wwv_flow_api.id(19287996820552801147)
,p_item_template_options=>'#DEFAULT#:item-fade-in:enable-scrollfire'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19287756905313585917)
,p_name=>'toast1'
,p_event_sequence=>1
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'toast1'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19287757028217585918)
,p_event_id=>wwv_flow_api.id(19287756905313585917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MATERIAL.APEX.TOAST'
,p_attribute_01=>'Hello!'
,p_attribute_02=>'4000'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19287757151133585919)
,p_name=>'toast2'
,p_event_sequence=>11
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'toast2'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19287757226064585920)
,p_event_id=>wwv_flow_api.id(19287757151133585919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MATERIAL.APEX.TOAST'
,p_attribute_01=>'See how your content unfolds as you scroll'
,p_attribute_02=>'4000'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19287755504113585903)
,p_name=>'fadeInImage'
,p_event_sequence=>21
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'fadeInImage'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19287755683316585904)
,p_event_id=>wwv_flow_api.id(19287755504113585903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MATERIAL.APEX.FADE.IN.IMAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_FADE_IN_IMAGE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19287755702389585905)
,p_name=>'staggeredList'
,p_event_sequence=>31
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'staggeredList'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19287755855992585906)
,p_event_id=>wwv_flow_api.id(19287755702389585905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MATERIAL.APEX.STAGGERED.LIST'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(19324303946839461429)
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Modal Standard'
,p_page_mode=>'MODAL'
,p_step_title=>'Modal Standard'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(8428157000573412650)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8427875690819266766)
,p_plug_name=>'{modal-content}'
,p_region_template_options=>'#DEFAULT#:flow-text-region:hide-title:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure'
||' dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>',
'',
'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure'
||' dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459533101772045962)
,p_plug_name=>'{modal-footer}'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8459533206469045963)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8459533101772045962)
,p_button_name=>'AGREE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:waves-effect waves-red:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Agree'
,p_button_position=>'BODY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8459533311557045964)
,p_name=>'Close Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8459533206469045963)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8459533413014045965)
,p_event_id=>wwv_flow_api.id(8459533311557045964)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_api.create_page(
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Modal with Fixed Footer'
,p_page_mode=>'MODAL'
,p_step_title=>'Modal with Fixed Footer'
,p_step_sub_title=>'Modal with Fixed Footer'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(9086810839040673564)
,p_step_template=>wwv_flow_api.id(8428157000573412650)
,p_page_template_options=>'#DEFAULT#:modal-fixed-footer'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459711772932073355)
,p_plug_name=>'{modal-content}'
,p_region_template_options=>'#DEFAULT#:flow-text-region:hide-title:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure'
||' dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>',
'',
'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure'
||' dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8459712199446073361)
,p_plug_name=>'{modal-footer}'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8459712659190073361)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8459712199446073361)
,p_button_name=>'AGREE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:icon-float-left:waves-effect waves-red:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Agree'
,p_button_position=>'BODY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8459712978524073364)
,p_name=>'Close Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8459712659190073361)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8459713488711073365)
,p_event_id=>wwv_flow_api.id(8459712978524073364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00061
begin
wwv_flow_api.create_page(
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Tabular Form'
,p_page_mode=>'NORMAL'
,p_step_title=>'Tabular Form'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(19325199628222736389)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151209012047'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4652729559726162269)
,p_name=>'Tabular Form'
,p_template=>wwv_flow_api.id(9362893649341773011)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:left-align:h2:buttons-right'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"EMPNO",',
'"ENAME",',
'"JOB",',
'"HIREDATE",',
'"SAL",',
'"DEPTNO"',
'from "EMP"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9090634527809844626)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'SEARCH_ENGINE'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4652730253746162272)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'APEX_VMORNEAU'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'EMPNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4652731078791162273)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'APEX_VMORNEAU'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'ENAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4652731477549162273)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>4
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'APEX_VMORNEAU'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'JOB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4652732229975162274)
,p_query_column_id=>4
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Hire Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'APEX_VMORNEAU'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'HIREDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4652732673223162274)
,p_query_column_id=>5
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'APEX_VMORNEAU'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'SAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4652733493445162275)
,p_query_column_id=>6
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>7
,p_column_heading=>'Department'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUPKEY'
,p_named_lov=>wwv_flow_api.id(4657833566396268381)
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'- Select -'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'APEX_VMORNEAU'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'DEPTNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4652744198771162292)
,p_query_column_id=>7
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4652736593482162282)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(4652729559726162269)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:grey:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4652736770617162282)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(4652729559726162269)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4652736637705162282)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(4652729559726162269)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:blue:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4652736809813162282)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4652729559726162269)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4652744571079162292)
,p_branch_action=>'f?p=&APP_ID.:61:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(4652736637705162282)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4652738786685162286)
,p_tabular_form_region_id=>wwv_flow_api.id(4652729559726162269)
,p_validation_name=>'MGR must be numeric'
,p_validation_sequence=>50
,p_validation=>'MGR'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(4652736637705162282)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'MGR'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4652739105386162287)
,p_tabular_form_region_id=>wwv_flow_api.id(4652729559726162269)
,p_validation_name=>'HIREDATE must be a valid date'
,p_validation_sequence=>60
,p_validation=>'HIREDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(4652736637705162282)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'HIREDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4652739562331162287)
,p_tabular_form_region_id=>wwv_flow_api.id(4652729559726162269)
,p_validation_name=>'SAL must be numeric'
,p_validation_sequence=>70
,p_validation=>'SAL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(4652736637705162282)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'SAL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4652739958662162287)
,p_tabular_form_region_id=>wwv_flow_api.id(4652729559726162269)
,p_validation_name=>'COMM must be numeric'
,p_validation_sequence=>80
,p_validation=>'COMM'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(4652736637705162282)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'COMM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4652740312222162287)
,p_tabular_form_region_id=>wwv_flow_api.id(4652729559726162269)
,p_validation_name=>'DEPTNO must be numeric'
,p_validation_sequence=>90
,p_validation=>'DEPTNO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(4652736637705162282)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'DEPTNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00062
begin
wwv_flow_api.create_page(
 p_id=>62
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Interactive Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Interactive Report'
,p_step_sub_title=>'Interactive Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(19325199628222736389)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5231051489945587934)
,p_plug_name=>'Interactive Report'
,p_region_template_options=>'#DEFAULT#:h2:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select EMPNO,',
'       ENAME,',
'       JOB,',
'       HIREDATE,',
'       SAL,',
'       DEPTNO',
'  from EMP'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(5231051577129587934)
,p_name=>'Interactive Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP:P63_EMPNO:#EMPNO#'
,p_detail_link_text=>'<i class="material-icons small">edit</i>'
,p_owner=>'VINCENT.MORNEAU@GMAIL.COM'
,p_internal_uid=>5231051577129587934
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5231051952387587938)
,p_db_column_name=>'EMPNO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Empno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5231052296054587939)
,p_db_column_name=>'ENAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5231052653142587939)
,p_db_column_name=>'JOB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5231053023016587940)
,p_db_column_name=>'HIREDATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5231053488883587940)
,p_db_column_name=>'SAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5231053849489587941)
,p_db_column_name=>'DEPTNO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(4657833566396268381)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5231142042005591875)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'52311421'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMPNO:ENAME:JOB:HIREDATE:SAL:DEPTNO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4586562386210819019)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5231051489945587934)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:fab-right'
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_button_image_alt=>'create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63::'
,p_icon_css_classes=>'group_add'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4624289576039904305)
,p_name=>'onCloseDialog - Refresh IR'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(5231051489945587934)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4624289638789904306)
,p_event_id=>wwv_flow_api.id(4624289576039904305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5231051489945587934)
);
end;
/
prompt --application/pages/page_00063
begin
wwv_flow_api.create_page(
 p_id=>63
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Employee Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Employee Details'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(19325199628222736389)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(8428157000573412650)
,p_page_template_options=>'#DEFAULT#:modal-fixed-footer'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160210053001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6987248318726266810)
,p_plug_name=>'Employee Details'
,p_region_template_options=>'#DEFAULT#:hide-title:left-align:buttons-left'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6987249052243266811)
,p_plug_name=>'{modal footer}'
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6987249419002266812)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6987249052243266811)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:grey:lighten-1:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BODY'
,p_icon_css_classes=>'restore'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6987248929233266811)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6987249052243266811)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:red:lighten-1:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Delete'
,p_button_position=>'BODY'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P63_EMPNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'delete'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6987248836470266811)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6987249052243266811)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:blue:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BODY'
,p_button_condition=>'P63_EMPNO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'save'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6987248775751266811)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(6987249052243266811)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:blue:icon-float-left:btn:waves-effect'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BODY'
,p_button_condition=>'P63_EMPNO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'save'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6987251841189266964)
,p_name=>'P63_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6987248318726266810)
,p_use_cache_before_default=>'NO'
,p_source=>'EMPNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6987252146323266967)
,p_name=>'P63_ENAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6987248318726266810)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Name'
,p_source=>'ENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6987252553539266968)
,p_name=>'P63_JOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6987248318726266810)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job'
,p_source=>'JOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>9
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6987252967922266968)
,p_name=>'P63_MGR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6987248318726266810)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MGR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6987253306676266969)
,p_name=>'P63_HIREDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6987248318726266810)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire Date'
,p_source=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6987253794219266970)
,p_name=>'P63_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6987248318726266810)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6987254596588266972)
,p_name=>'P63_DEPTNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6987248318726266810)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deptno'
,p_source=>'DEPTNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EXAMPLE_LOV'
,p_lov=>'.'||wwv_flow_api.id(9087158456892135339)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'m6'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6987249509102266812)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6987249419002266812)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6987250387600266817)
,p_event_id=>wwv_flow_api.id(6987249509102266812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6987255366424266974)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EMP'
,p_attribute_02=>'EMP'
,p_attribute_03=>'P63_EMPNO'
,p_attribute_04=>'EMPNO'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6987255715795266975)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EMP'
,p_attribute_02=>'EMP'
,p_attribute_03=>'P63_EMPNO'
,p_attribute_04=>'EMPNO'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6987256131611266975)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6987248929233266811)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6987256541061266976)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(9085956427190111783)
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9086810631075671227)
,p_step_template=>wwv_flow_api.id(11293535835719327359)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151207045020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9085956937591111788)
,p_plug_name=>'Material APEX'
,p_region_template_options=>'#DEFAULT#:center-align:h1:buttons-left'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(9362893649341773011)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9085973136385287098)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9085956937591111788)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:icon-float-right:waves-effect waves-light:btn'
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_button_image_alt=>'Login'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
,p_icon_css_classes=>'exit_to_app'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9085957031770111790)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9085956937591111788)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="off"'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9085957157733111790)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9085956937591111788)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="off"'
,p_field_template=>wwv_flow_api.id(9361856552060152525)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9085957455466111791)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9085957333398111791)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9085957645289111791)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9085957551125111791)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
