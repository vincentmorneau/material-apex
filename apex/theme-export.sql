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
prompt --application/themes/101
begin
    wwv_flow.g_flow_theme_id := 101;
null;
end;
/
 
--
prompt  ...theme : 101
--
prompt  ...remove existing theme ...
begin
 wwv_flow_api.delete_theme(p_flow_id=> wwv_flow.g_flow_id , p_theme_id=>wwv_flow.g_flow_theme_id ,p_import=>'Y');
null;
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(8428157000573412650)
, p_theme_id => wwv_flow.g_flow_theme_id
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
, p_theme_id => wwv_flow.g_flow_theme_id
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
, p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(19176696603223351381)
,p_template_name=>'Button - Fixed Action Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" id="#BUTTON_ID#" class="fixed-action-btn btn-floating btn-large #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#><i class="material-icons">#ICON_CSS_CLASSES#</i>#LABEL#</a>',
''))
,p_theme_class_id=>6
,p_preset_template_options=>'fab-right'
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>5
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9361856552060152525)
,p_template_name=>'Item - Standard'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" data-tooltip="#CURRENT_ITEM_HELP_TEXT#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_NAME#_CONTAINER" class="input-field #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>5
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9760004795692810490)
,p_template_name=>'Item - Materialbox'
,p_template_body1=>'<label class="big-label">'
,p_template_body2=>'</label>'
,p_before_element=>'<div data-caption="#CURRENT_ITEM_HELP_TEXT# ">'
,p_after_element=>'</div>'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>5
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(19287996820552801147)
,p_template_name=>'Item - Image'
,p_template_body1=>'<label class="hide">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_NAME#_CONTAINER" class="#ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>4
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(9408226396554077894)
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(2849762261134432680)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BACKGROUND_MODIFIER'
,p_display_name=>'Background Modifier'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(2849781534506434087)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4151256800869510081)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDING_CONTENT'
,p_display_name=>'Hiding Content'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4625633226369993450)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDING_CONTENT'
,p_display_name=>'Hiding Content'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(4625633820284994712)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDING_CONTENT'
,p_display_name=>'Hiding Content'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6259794612418325048)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'RESPONSIVE_BEHAVIOR'
,p_display_name=>'Responsive Behavior'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8063349408848373599)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'COLLAPSIBLE_BEHAVIOR'
,p_display_name=>'Collapsible Behavior'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8137243532479738359)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LANGUAGE_TYPE'
,p_display_name=>'Language Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8213526765441544465)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8496391179266339003)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8690623965220090355)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ICON_FLOAT'
,p_display_name=>'Icon Float'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_help_text=>'Only applies if your button has an icon'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8928772492775860585)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SECTION_HEADER_SIZE'
,p_display_name=>'Section Header Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8931961413606910069)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8931979833521911829)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(8931981923662917963)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'WAVE_EFFECT'
,p_display_name=>'Wave Effect'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'None'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9623377540309124083)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9635514774241624056)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9635515553548628706)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BACKGROUND_MODIFIER'
,p_display_name=>'Background Modifier'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(9635536263692640129)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(13154151598654866404)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DIRECTION'
,p_display_name=>'Direction'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19177324499174518770)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19326809326865053501)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ENABLE_SCROLLFIRE'
,p_display_name=>'Enable ScrollFire'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'No'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19327251606774082511)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ENABLE_SCROLLFIRE'
,p_display_name=>'Enable ScrollFire'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'No'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19419020753447205005)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'CENTER_LOGO'
,p_display_name=>'Center Logo'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9087126745232589871)
,p_css_classes=>'center-logo'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829356526135851513)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'NAVBAR_FIXED'
,p_display_name=>'Navbar Fixed'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(9087126745232589871)
,p_css_classes=>'navbar-fixed'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829766335642932779)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEPTH_1'
,p_display_name=>'Depth 1'
,p_display_sequence=>1
,p_css_classes=>'z-depth-1'
,p_group_id=>wwv_flow_api.id(8496391179266339003)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829767799620934964)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEPTH_2'
,p_display_name=>'Depth 2'
,p_display_sequence=>1
,p_css_classes=>'z-depth-2'
,p_group_id=>wwv_flow_api.id(8496391179266339003)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829769162412937065)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEPTH_3'
,p_display_name=>'Depth 3'
,p_display_sequence=>1
,p_css_classes=>'z-depth-3'
,p_group_id=>wwv_flow_api.id(8496391179266339003)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829769955220938568)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEPTH_4'
,p_display_name=>'Depth 4'
,p_display_sequence=>1
,p_css_classes=>'z-depth-4'
,p_group_id=>wwv_flow_api.id(8496391179266339003)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2829796222524940595)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEPTH_5'
,p_display_name=>'Depth 5'
,p_display_sequence=>1
,p_css_classes=>'z-depth-5'
,p_group_id=>wwv_flow_api.id(8496391179266339003)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2851943062201669701)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_YELLOW'
,p_display_name=>'Yellow'
,p_display_sequence=>1
,p_css_classes=>'yellow'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2851957063792679130)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'AMBER'
,p_display_name=>'Amber'
,p_display_sequence=>1
,p_css_classes=>'amber'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2851975156024690855)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_BLUE_GREY'
,p_display_name=>'Blue Grey'
,p_display_sequence=>1
,p_css_classes=>'blue-grey'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2851990076986675552)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_BLUE'
,p_display_name=>'Blue'
,p_display_sequence=>1
,p_css_classes=>'blue'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852020618724679445)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_BROWN'
,p_display_name=>'Brown'
,p_display_sequence=>1
,p_css_classes=>'brown'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852024090590687431)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_GREY'
,p_display_name=>'Grey'
,p_display_sequence=>1
,p_css_classes=>'grey'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852027687741696407)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_LIGHT_BLUE'
,p_display_name=>'Light Blue'
,p_display_sequence=>1
,p_css_classes=>'light-blue'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852035740975693787)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_CYAN'
,p_display_name=>'Cyan'
,p_display_sequence=>1
,p_css_classes=>'cyan'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852037006392695271)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_DEEP_ORANGE'
,p_display_name=>'Deep Orange'
,p_display_sequence=>1
,p_css_classes=>'deep-orange'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852050002853696829)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_DEEP_PURPLE'
,p_display_name=>'Deep Purple'
,p_display_sequence=>1
,p_css_classes=>'deep-purple'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852061920922698901)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_GREEN'
,p_display_name=>'Green'
,p_display_sequence=>1
,p_css_classes=>'green'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852065791340701758)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_INDIGO'
,p_display_name=>'Indigo'
,p_display_sequence=>1
,p_css_classes=>'indigo'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852079834124699900)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_LIME'
,p_display_name=>'Lime'
,p_display_sequence=>1
,p_css_classes=>'lime'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852090602173711147)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_LIGHT_GREEN'
,p_display_name=>'Light Green'
,p_display_sequence=>1
,p_css_classes=>'light-green'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852117714865704082)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_PINK'
,p_display_name=>'Pink'
,p_display_sequence=>1
,p_css_classes=>'pink'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852130060673715031)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_ORANGE'
,p_display_name=>'Orange'
,p_display_sequence=>1
,p_css_classes=>'orange'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852167961495719508)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_PURPLE'
,p_display_name=>'Purple'
,p_display_sequence=>1
,p_css_classes=>'purple'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852189553170721109)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_RED'
,p_display_name=>'Red'
,p_display_sequence=>1
,p_css_classes=>'red'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852193592042723190)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_TEAL'
,p_display_name=>'Teal'
,p_display_sequence=>1
,p_css_classes=>'teal'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852243670579726538)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_TRANSPARENT'
,p_display_name=>'Transparent'
,p_display_sequence=>1
,p_css_classes=>'transparent'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852279599904727817)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_WHITE'
,p_display_name=>'White'
,p_display_sequence=>1
,p_css_classes=>'white'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852313972762729331)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_BLACK'
,p_display_name=>'Black'
,p_display_sequence=>1
,p_css_classes=>'black'
,p_group_id=>wwv_flow_api.id(2849683582231442919)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852321482378724740)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>1
,p_css_classes=>'accent-2'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852325195134734790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_DARKEN_3'
,p_display_name=>'Darken 3'
,p_display_sequence=>1
,p_css_classes=>'darken-3'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852326886823736407)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_DARKEN_4'
,p_display_name=>'Darken 4'
,p_display_sequence=>1
,p_css_classes=>'darken-4'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852388705810736124)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>1
,p_css_classes=>'accent-1'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852426227955739572)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>1
,p_css_classes=>'accent-3'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852442045334741786)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>1
,p_css_classes=>'accent-4'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852448109235744112)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_DARKEN_1'
,p_display_name=>'Darken 1'
,p_display_sequence=>1
,p_css_classes=>'darken-1'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852474613521745920)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_DARKEN_2'
,p_display_name=>'Darken 2'
,p_display_sequence=>1
,p_css_classes=>'darken-2'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852496639548756452)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_LIGHTEN_3'
,p_display_name=>'Lighten 3'
,p_display_sequence=>1
,p_css_classes=>'lighten-3'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852498120842738908)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_LIGHTEN_1'
,p_display_name=>'Lighten 1'
,p_display_sequence=>1
,p_css_classes=>'lighten-1'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852499620510741284)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_LIGHTEN_2'
,p_display_name=>'Lighten 2'
,p_display_sequence=>1
,p_css_classes=>'lighten-2'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852519198374745716)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_LIGHTEN_4'
,p_display_name=>'Lighten 4'
,p_display_sequence=>1
,p_css_classes=>'lighten-4'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852520755001748866)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_BG_LIGHTEN_5'
,p_display_name=>'Lighten 5'
,p_display_sequence=>1
,p_css_classes=>'lighten-5'
,p_group_id=>wwv_flow_api.id(2849762261134432680)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852677079942797644)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_YELLOW'
,p_display_name=>'Yellow'
,p_display_sequence=>1
,p_css_classes=>'yellow-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852787046765787062)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_WHITE'
,p_display_name=>'White'
,p_display_sequence=>1
,p_css_classes=>'white-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852823082099791055)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_BLUE_GREY'
,p_display_name=>'Blue Grey'
,p_display_sequence=>1
,p_css_classes=>'blue-grey-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852825843774793660)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_BLUE'
,p_display_name=>'Blue'
,p_display_sequence=>1
,p_css_classes=>'blue-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852834112600795688)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_BROWN'
,p_display_name=>'Brown'
,p_display_sequence=>1
,p_css_classes=>'brown-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852843563019796779)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_CYAN'
,p_display_name=>'Cyan'
,p_display_sequence=>1
,p_css_classes=>'cyan-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852878651026798997)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_DEEP_ORANGE'
,p_display_name=>'Deep Orange'
,p_display_sequence=>1
,p_css_classes=>'deep-orange-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852883330953800653)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_DEEP_PURPLE'
,p_display_name=>'Deep Purple'
,p_display_sequence=>1
,p_css_classes=>'deep-purple-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852884774354801801)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_GREEN'
,p_display_name=>'Green'
,p_display_sequence=>1
,p_css_classes=>'green-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852895920576825671)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_LIME'
,p_display_name=>'Lime'
,p_display_sequence=>1
,p_css_classes=>'lime-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852928126234803119)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_GREY'
,p_display_name=>'Grey'
,p_display_sequence=>1
,p_css_classes=>'grey-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852966618132805490)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_INDIGO'
,p_display_name=>'Indigo'
,p_display_sequence=>1
,p_css_classes=>'indigo-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852989683779809533)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_LIGHT_BLUE'
,p_display_name=>'Light Blue'
,p_display_sequence=>1
,p_css_classes=>'light-blue-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2852994625794811287)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_LIGHT_GREEN'
,p_display_name=>'Light Green'
,p_display_sequence=>1
,p_css_classes=>'light-green-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853000651660827584)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_ORANGE'
,p_display_name=>'Orange'
,p_display_sequence=>1
,p_css_classes=>'orange-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853018795355829542)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_PINK'
,p_display_name=>'Pink'
,p_display_sequence=>1
,p_css_classes=>'pink-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853040556236818104)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_PURPLE'
,p_display_name=>'Purple'
,p_display_sequence=>1
,p_css_classes=>'purple-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853059316287819992)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_RED'
,p_display_name=>'Red'
,p_display_sequence=>1
,p_css_classes=>'red-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853062561243821799)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_TEAL'
,p_display_name=>'Teal'
,p_display_sequence=>1
,p_css_classes=>'teal-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(2853075207241823561)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BTN_TEXT_AMBER'
,p_display_name=>'Amber'
,p_display_sequence=>1
,p_css_classes=>'amber-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4063745823980324753)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'NO_LABEL'
,p_display_name=>'No Label'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(9361856552060152525)
,p_css_classes=>'item-no-label'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4150189860267332775)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'VERTICAL_ALIGNED'
,p_display_name=>'Vertical Aligned'
,p_display_sequence=>1
,p_css_classes=>'valign-wrapper'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151259433092514811)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_HIDDEN_FOR_ALL_DEVICES'
,p_display_name=>'Hidden for all Devices'
,p_display_sequence=>1
,p_css_classes=>'hide'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151260592160517522)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_HIDDEN_FOR_MOBILE_ONLY'
,p_display_name=>'Hidden for Small Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151265791919519846)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_HIDDEN_FOR_TABLET_ONLY'
,p_display_name=>'Hidden for Medium Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-only'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151289417207516064)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'R_HIDDEN_FOR_TABLET_AND_BELOW'
,p_display_name=>'Hidden for Medium and Below'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-down'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151290024434518478)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'R_HIDDEN_FOR_TABLET_AND_ABOVE'
,p_display_name=>'Hidden for Medium and Above'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-up'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151331658093533056)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'R_HIDDEN_FOR_DESKTOP_ONLY'
,p_display_name=>'Hidden for Large Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4151357532997543156)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TRUNCATE_TEXT_OVERFLOW'
,p_display_name=>'Truncate Text Overflow'
,p_display_sequence=>1
,p_css_classes=>'truncate'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4152941575161142711)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'R_HIDDEN_FOR_SMALL_AND_LARGE'
,p_display_name=>'Hidden for Small and Large'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4151256800869510081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4170574158063074676)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FIXED_FOOTER'
,p_display_name=>'Fixed Footer'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4170487165352055150)
,p_css_classes=>'modal-fixed-footer'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4170588952097081936)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BOTTOM_SHEET'
,p_display_name=>'Bottom Sheet'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(4170487165352055150)
,p_css_classes=>'bottom-sheet'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625496995757167368)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'I_HIDDEN_FOR_MEDIUM_AND_BELOW'
,p_display_name=>'Hidden for Medium and Below'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-down'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625635597248997948)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'I_HIDDEN_FOR_ALL_DEVICES'
,p_display_name=>'Hidden for all Devices'
,p_display_sequence=>1
,p_css_classes=>'hide'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625636578614999716)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'I_HIDDEN_FOR_LARGE_ONLY'
,p_display_name=>'Hidden for Large Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625637605543002288)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'I_HIDDEN_FOR_SMALL_AND_LARGE'
,p_display_name=>'Hidden for Small and Large'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625638070988003396)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'I_HIDDEN_FOR_MEDIUM_ONLY'
,p_display_name=>'Hidden for Medium Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-only'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625638348996004643)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'I_HIDDEN_FOR_SMALL_ONLY'
,p_display_name=>'Hidden for Small Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625639027067006058)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'I_HIDDEN_FOR_MEDIUM_AND_ABOVE'
,p_display_name=>'Hidden for Medium and Above'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-up'
,p_group_id=>wwv_flow_api.id(4625633226369993450)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625639674782008326)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'B_HIDDEN_FOR_ALL_DEVICES'
,p_display_name=>'Hidden for all Devices'
,p_display_sequence=>1
,p_css_classes=>'hide'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625642083908010409)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'B_HIDDEN_FOR_LARGE_ONLY'
,p_display_name=>'Hidden for Large Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625643381372011697)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'B_HIDDEN_FOR_MEDIUM_AND_BELOW'
,p_display_name=>'Hidden for Medium and Below'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-down'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625645330194012988)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'B_HIDDEN_FOR_SMALL_AND_LARGE'
,p_display_name=>'Hidden for Small and Large'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only hide-on-large-only'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625646018032014136)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'B_HIDDEN_FOR_MEDIUM_ONLY'
,p_display_name=>'Hidden for Medium Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-only'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625646792303015318)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'B_HIDDEN_FOR_SMALL_ONLY'
,p_display_name=>'Hidden for Small Only'
,p_display_sequence=>1
,p_css_classes=>'hide-on-small-only'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(4625647788825016695)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'B_HIDDEN_FOR_MEDIUM_AND_ABOVE'
,p_display_name=>'Hidden for Medium and Above'
,p_display_sequence=>1
,p_css_classes=>'hide-on-med-and-up'
,p_group_id=>wwv_flow_api.id(4625633820284994712)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6259770708666321001)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'left-align'
,p_group_id=>wwv_flow_api.id(8213526765441544465)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8213539941152549367)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'CENTER'
,p_display_name=>'Center'
,p_display_sequence=>1
,p_css_classes=>'center-align'
,p_group_id=>wwv_flow_api.id(8213526765441544465)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8213540570413550201)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>1
,p_css_classes=>'right-align'
,p_group_id=>wwv_flow_api.id(8213526765441544465)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8214583615358689636)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'WHITE'
,p_display_name=>'White'
,p_display_sequence=>1
,p_css_classes=>'white-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8459270597216962077)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FIXED_FOOTER'
,p_display_name=>'Fixed Footer'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(8428157000573412650)
,p_css_classes=>'modal-fixed-footer'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8594017901327609110)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'POPOUT'
,p_display_name=>'Popout'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(8062881798324256540)
,p_css_classes=>'popout'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8690625419994095075)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_BLACK'
,p_display_name=>'Black'
,p_display_sequence=>1
,p_css_classes=>'black'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8747925926475493992)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_WHITE'
,p_display_name=>'White'
,p_display_sequence=>1
,p_css_classes=>'white'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8747927235057495360)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_TRANSPARENT'
,p_display_name=>'Transparent'
,p_display_sequence=>1
,p_css_classes=>'transparent'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8754251648233224011)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'MATERIAL_DATE_PICKER'
,p_display_name=>'Material Date Picker'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(9361856552060152525)
,p_css_classes=>'material-apex-datepicker'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8772827267863929690)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'CENTER_LOGO'
,p_display_name=>'Center Logo'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_css_classes=>'page-center-logo'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8772827838916931432)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'NAVIGATION_BAR_FIXED'
,p_display_name=>'Navigation Bar Fixed'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_css_classes=>'page-navbar-fixed'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8927977247325567220)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9090634527809844626)
,p_css_classes=>'borderless'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8927977730639568900)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HOVERABLE'
,p_display_name=>'Hoverable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9090634527809844626)
,p_css_classes=>'hoverable'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8927978453214570135)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'STRIPED'
,p_display_name=>'Striped'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9090634527809844626)
,p_css_classes=>'striped'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8928701331158829713)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SCROLLSPY'
,p_display_name=>'Scrollspy'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'scrollspy'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8928751170841884859)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LIGHT'
,p_display_name=>'Light'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-light'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932338046567016920)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'RED'
,p_display_name=>'Red'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-red'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932338450855017969)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'YELLOW'
,p_display_name=>'Yellow'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-yellow'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932341759735020280)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'PURPLE'
,p_display_name=>'Purple'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-purple'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932351595116005968)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ORANGE'
,p_display_name=>'Orange'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-orange'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932352064223008338)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'GREEN'
,p_display_name=>'Green'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-green'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(8932401279622022617)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEAL'
,p_display_name=>'Teal'
,p_display_sequence=>1
,p_css_classes=>'waves-effect waves-teal'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623329677206118649)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEPTH_1'
,p_display_name=>'Depth 1'
,p_display_sequence=>1
,p_css_classes=>'z-depth-1'
,p_group_id=>wwv_flow_api.id(9623377540309124083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623330015757120168)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEPTH_2'
,p_display_name=>'Depth 2'
,p_display_sequence=>1
,p_css_classes=>'z-depth-2'
,p_group_id=>wwv_flow_api.id(9623377540309124083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623330308933121027)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEPTH_3'
,p_display_name=>'Depth 3'
,p_display_sequence=>1
,p_css_classes=>'z-depth-3'
,p_group_id=>wwv_flow_api.id(9623377540309124083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623330577907122276)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEPTH_4'
,p_display_name=>'Depth 4'
,p_display_sequence=>1
,p_css_classes=>'z-depth-4'
,p_group_id=>wwv_flow_api.id(9623377540309124083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623330917299123071)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEPTH_5'
,p_display_name=>'Depth 5'
,p_display_sequence=>1
,p_css_classes=>'z-depth-5'
,p_group_id=>wwv_flow_api.id(9623377540309124083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9623417201819256987)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FLOW_TEXT'
,p_display_name=>'Flow Text'
,p_display_sequence=>1
,p_css_classes=>'flow-text-region'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635537280154650129)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_RED'
,p_display_name=>'Red'
,p_display_sequence=>1
,p_css_classes=>'red'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635538360975652101)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_PINK'
,p_display_name=>'Pink'
,p_display_sequence=>1
,p_css_classes=>'pink'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635538670361653373)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_PURPLE'
,p_display_name=>'Purple'
,p_display_sequence=>1
,p_css_classes=>'purple'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635538920568655215)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_DEEP_PURPLE'
,p_display_name=>'Deep Purple'
,p_display_sequence=>1
,p_css_classes=>'deep-purple'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635539317038657094)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_INDIGO'
,p_display_name=>'Indigo'
,p_display_sequence=>1
,p_css_classes=>'indigo'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635539566580658210)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_BLUE'
,p_display_name=>'Blue'
,p_display_sequence=>1
,p_css_classes=>'blue'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635542302527681431)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_LIGHT_BLUE'
,p_display_name=>'Light Blue'
,p_display_sequence=>1
,p_css_classes=>'light-blue'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635542650082682395)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_CYAN'
,p_display_name=>'Cyan'
,p_display_sequence=>1
,p_css_classes=>'cyan'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635542958117683760)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_TEAL'
,p_display_name=>'Teal'
,p_display_sequence=>1
,p_css_classes=>'teal'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635543487064684946)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_GREEN'
,p_display_name=>'Green'
,p_display_sequence=>1
,p_css_classes=>'green'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635543858419687036)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_LIGHT_GREEN'
,p_display_name=>'Light Green'
,p_display_sequence=>1
,p_css_classes=>'light-green'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635544159862688331)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_LIME'
,p_display_name=>'Lime'
,p_display_sequence=>1
,p_css_classes=>'lime'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635544505358689954)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_YELLOW'
,p_display_name=>'Yellow'
,p_display_sequence=>1
,p_css_classes=>'yellow'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635544725988691609)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_AMBER'
,p_display_name=>'Amber'
,p_display_sequence=>1
,p_css_classes=>'amber'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635545092901696429)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_ORANGE'
,p_display_name=>'Orange'
,p_display_sequence=>1
,p_css_classes=>'orange'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635545339632697828)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_DEEP_ORANGE'
,p_display_name=>'Deep Orange'
,p_display_sequence=>1
,p_css_classes=>'deep-orange'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635559058340700100)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_BROWN'
,p_display_name=>'Brown'
,p_display_sequence=>1
,p_css_classes=>'brown'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635559326015702082)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_GREY'
,p_display_name=>'Grey'
,p_display_sequence=>1
,p_css_classes=>'grey'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635559765115704090)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_BG_BLUE_GREY'
,p_display_name=>'Blue Grey'
,p_display_sequence=>1
,p_css_classes=>'blue-grey'
,p_group_id=>wwv_flow_api.id(9635514774241624056)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635560666042712711)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LIGHTEN_5'
,p_display_name=>'Lighten 5'
,p_display_sequence=>1
,p_css_classes=>'lighten-5'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635561128687714368)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LIGHTEN_4'
,p_display_name=>'Lighten 4'
,p_display_sequence=>1
,p_css_classes=>'lighten-4'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635561435059716123)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LIGHTEN_3'
,p_display_name=>'Lighten 3'
,p_display_sequence=>1
,p_css_classes=>'lighten-3'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635561792760717516)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LIGHTEN_2'
,p_display_name=>'Lighten 2'
,p_display_sequence=>1
,p_css_classes=>'lighten-2'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635562036760718851)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LIGHTEN_1'
,p_display_name=>'Lighten 1'
,p_display_sequence=>1
,p_css_classes=>'lighten-1'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635562350280720811)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DARKEN_1'
,p_display_name=>'Darken 1'
,p_display_sequence=>1
,p_css_classes=>'darken-1'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635565070648722217)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DARKEN_2'
,p_display_name=>'Darken 2'
,p_display_sequence=>1
,p_css_classes=>'darken-2'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635565401719724466)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DARKEN_3'
,p_display_name=>'Darken 3'
,p_display_sequence=>1
,p_css_classes=>'darken-3'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635565662158725892)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DARKEN_4'
,p_display_name=>'Darken 4'
,p_display_sequence=>1
,p_css_classes=>'darken-4'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635565947245727383)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>1
,p_css_classes=>'accent-1'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635576246778728303)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>1
,p_css_classes=>'accent-2'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635576560606729656)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>1
,p_css_classes=>'accent-3'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9635576839055730791)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>1
,p_css_classes=>'accent-4'
,p_group_id=>wwv_flow_api.id(9635515553548628706)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9652679727976294477)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'WITH_HEADER'
,p_display_name=>'With Header'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9652079909139010806)
,p_css_classes=>'with-header'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9652721816156318387)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'WITH_HEADER'
,p_display_name=>'With Header'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9652104318611059757)
,p_css_classes=>'with-header'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9654753538988502548)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'CONTAINER'
,p_display_name=>'Container'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'container'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9654845091129677864)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'WITH_HEADER'
,p_display_name=>'With Header'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9652148565941067451)
,p_css_classes=>'with-header'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9662078502203681982)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'CONTAINER'
,p_display_name=>'Container'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_css_classes=>'main-container'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756265909954045679)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'RED_TEXT'
,p_display_name=>'Red'
,p_display_sequence=>1
,p_css_classes=>'red-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756336166780049755)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'PINK_TEXT'
,p_display_name=>'Pink'
,p_display_sequence=>1
,p_css_classes=>'pink-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756336526893058293)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'PURPLE_TEXT'
,p_display_name=>'Purple'
,p_display_sequence=>1
,p_css_classes=>'purple-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756336877040060537)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEEP_PURPLE_TEXT'
,p_display_name=>'Deep Purple'
,p_display_sequence=>1
,p_css_classes=>'deep-purple-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756337305727064984)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'INDIGO_TEXT'
,p_display_name=>'Indigo'
,p_display_sequence=>1
,p_css_classes=>'indigo-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756337607591067819)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BLUE_TEXT'
,p_display_name=>'Blue'
,p_display_sequence=>1
,p_css_classes=>'blue-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756337821682070199)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LIGHT_BLUE_TEXT'
,p_display_name=>'Light Blue'
,p_display_sequence=>1
,p_css_classes=>'light-blue-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756338151424071643)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'CYAN_TEXT'
,p_display_name=>'Cyan'
,p_display_sequence=>1
,p_css_classes=>'cyan-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756338446942073645)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEAL_TEXT'
,p_display_name=>'Teal'
,p_display_sequence=>1
,p_css_classes=>'teal-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756338780918075117)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'GREEN_TEXT'
,p_display_name=>'Green'
,p_display_sequence=>1
,p_css_classes=>'green-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756339071459078096)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LIGHT_GREEN_TEXT'
,p_display_name=>'Light Green'
,p_display_sequence=>1
,p_css_classes=>'light-green-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756339389527079416)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LIME_TEXT'
,p_display_name=>'Lime'
,p_display_sequence=>1
,p_css_classes=>'lime-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756339709272080928)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'YELLOW_TEXT'
,p_display_name=>'Yellow'
,p_display_sequence=>1
,p_css_classes=>'yellow-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756340000680082810)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'AMBER_TEXT'
,p_display_name=>'Amber'
,p_display_sequence=>1
,p_css_classes=>'amber-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756340229648084546)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ORANGE_TEXT'
,p_display_name=>'Orange'
,p_display_sequence=>1
,p_css_classes=>'orange-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756340540697086305)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DEEP_ORANGE_TEXT'
,p_display_name=>'Deep Orange'
,p_display_sequence=>1
,p_css_classes=>'deep-orange-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756340896069089011)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BROWN_TEXT'
,p_display_name=>'Brown'
,p_display_sequence=>1
,p_css_classes=>'brown-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756341209029090945)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'GREY_TEXT'
,p_display_name=>'Grey'
,p_display_sequence=>1
,p_css_classes=>'grey-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9756341441234093740)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BLUE_GREY_TEXT'
,p_display_name=>'Blue Grey'
,p_display_sequence=>1
,p_css_classes=>'blue-grey-text'
,p_group_id=>wwv_flow_api.id(9635536263692640129)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9760119826112905721)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'MATERIALBOX'
,p_display_name=>'Materialbox'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(9362893649341773011)
,p_css_classes=>'apex-materialbox'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(11137318853986111903)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SIDE_NAVIGATION_FIXED'
,p_display_name=>'Side Navigation Fixed'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(9361814551162715062)
,p_css_classes=>'side-nav-fixed'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(13154177193977872210)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BLACK'
,p_display_name=>'Black'
,p_display_sequence=>1
,p_css_classes=>'black-text'
,p_group_id=>wwv_flow_api.id(2849781534506434087)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19176696991362351484)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'CLICK_TO_TOGGLE'
,p_display_name=>'Click to toggle'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_css_classes=>'click-to-toggle'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19176697340903351488)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FIXED_ACTION_BUTTON_HORITONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(19176696603223351381)
,p_css_classes=>'horizontal'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19176886785080250948)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FLAT'
,p_display_name=>'Flat'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(8931890664199879548)
,p_css_classes=>'btn-flat'
,p_group_id=>wwv_flow_api.id(8931979833521911829)
,p_template_types=>'BUTTON'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19177461399624375043)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'WAVE_DEFAULT'
,p_display_name=>'Default'
,p_display_sequence=>1
,p_css_classes=>'waves-effect'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19181717630108981927)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'WAVE_NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_css_classes=>'wave-none'
,p_group_id=>wwv_flow_api.id(8931981923662917963)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19287997118003801152)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'IMAGE_CIRCLE'
,p_display_name=>'Image Circle'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(19287996820552801147)
,p_css_classes=>'item-image-circle'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19287997503872801153)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'IMAGE_RESPONSIVE'
,p_display_name=>'Image Responsive'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(19287996820552801147)
,p_css_classes=>'item-image-responsive'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19288356765697874957)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FADE_IN_EFFECT'
,p_display_name=>'Fade In Effect'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(19287996820552801147)
,p_css_classes=>'item-fade-in'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19326795318239882435)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BUTTONS_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'buttons-left'
,p_group_id=>wwv_flow_api.id(19419020753447205005)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19419231564986219741)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BUTTONS_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>1
,p_css_classes=>'buttons-right'
,p_group_id=>wwv_flow_api.id(19419020753447205005)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(19419232220196221850)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BUTTONS_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>1
,p_css_classes=>'buttons-center'
,p_group_id=>wwv_flow_api.id(19419020753447205005)
,p_template_types=>'REGION'
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
