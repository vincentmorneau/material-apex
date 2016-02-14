# Theme Import
#### Import the Theme [theme-export.sql](../apex/theme-export.sql) in your existing application.  
1. Create theme
2. From export
3. Select `theme-export.sql`
4. Switch theme
5. Match templates

#### Configure Application Substitution Strings  
Name | Value
--- | ---
PATH | `#THEME_IMAGES#`

#### Configure Page 0
##### Region
Name | Type | Position | Template | Source
--- | ---
{item container} | Static Content | Item Container | *None* |
{footer} | Static Content | Footer | Footer
{hamburger menu} | Static Content | Hamburger Menu | *None* | See below
```html
<a href="#" id="menu-trigger" class="button-collapse" data-activates="app-sidenav"><i class="material-icons left">menu</i></a>
```

##### Items
Name | Type | Region | Source Type | Source Body
--- | ---
P0_BODY_COLUMN_CLASSES | Hidden | {item container} | PL/SQL Function Body | See below
```plsql
DECLARE
    l_exists number;
BEGIN
    SELECT distinct 1
    INTO l_exists
    FROM apex_application_page_regions apr
    JOIN apex_appl_template_options ato
    ON ato.region_template_id	= apr.template_id
    WHERE apr.application_id 		= :APP_ID
    AND apr.page_id 			= :APP_PAGE_ID
    AND	ato.name 				= 'SCROLLSPY'
    AND	apr.region_template_options like '%:' || ato.css_classes || ':%';

    return 'col s12 m9 l10';
EXCEPTION WHEN no_data_found THEN
    return null;
END;
```

##### Lists
Name | Type | List | Position | Template | Condition Type | Condition Query
--- | ---
{scrollspy} | List | Scrollspy | Scrollspy | *None* | Rows returned | See below
```sql
SELECT 1
FROM apex_application_page_regions apr
JOIN apex_appl_template_options ato
ON ato.region_template_id = apr.template_id
WHERE apr.application_id = :APP_ID
AND	apr.page_id = :APP_PAGE_ID
AND	ato.name = 'SCROLLSPY'
AND	apr.region_template_options like '%:' || ato.css_classes || ':%'
```

##### Shared Components - List
Name | Query Source Type | Query
--- | ---
Scrollspy | SQL Query | See below
```sql
SELECT null
	,apr.region_name
    ,'#' || nvl(apr.static_id, 'R' || apr.region_id) r
FROM apex_application_page_regions apr
JOIN apex_appl_template_options ato
ON ato.region_template_id	= apr.template_id
WHERE apr.application_id 		= :APP_ID
AND apr.page_id 			= :APP_PAGE_ID
AND ato.name 				= 'SCROLLSPY'
AND	apr.region_template_options like '%:' || ato.css_classes || ':%'
ORDER BY apr.display_sequence
```
