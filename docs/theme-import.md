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
--- | --- | --- | --- | ---
{item container} | Static Content | Item Container | *None* |
{footer} | Static Content | Footer | Footer
{hamburger menu} | Static Content | Hamburger Menu | *None* | See below
```html
<a href="#" id="menu-trigger" class="button-collapse" data-activates="app-sidenav"><i class="material-icons left">menu</i></a>
```

##### Items
Name | Type | Region | Source Type | Source Body
--- | --- | --- | --- | ---
P0_BODY_COLUMN_CLASSES | Hidden | {item container} | PL/SQL Function Body | See below
```plsql
declare
    l_exists number;
begin
    select distinct 1
    into l_exists
    from apex_application_page_regions apr
    join apex_appl_template_options ato
    on ato.region_template_id	= apr.template_id
    where apr.application_id 		= :APP_ID
    and apr.page_id 			= :APP_PAGE_ID
    and	ato.name 				= 'SCROLLSPY'
    and	apr.region_template_options like '%:' || ato.css_classes || ':%';

    return 'col s12 m9 l10';
exception
    when no_data_found then
        return null;
end;
```

##### Lists
Name | Type | List | Position | Template | Condition Type | Condition Query
--- | --- | --- | --- | --- | --- | ---
{scrollspy} | List | Scrollspy | Scrollspy | *None* | Rows returned | See below
```sql
select 1
from apex_application_page_regions apr
join apex_appl_template_options ato
on ato.region_template_id = apr.template_id
where apr.application_id = :APP_ID
and	apr.page_id = :APP_PAGE_ID
and	ato.name = 'SCROLLSPY'
and	apr.region_template_options like '%:' || ato.css_classes || ':%'
```

##### Shared Components - List
Name | Query Source Type | Query
--- | --- | ---
Scrollspy | SQL Query | See below
```sql
select null
	,apr.region_name
    ,'#' || nvl(apr.static_id, 'R' || apr.region_id) r
from apex_application_page_regions apr
join apex_appl_template_options ato
on ato.region_template_id	= apr.template_id
where apr.application_id 		= :APP_ID
and apr.page_id 			= :APP_PAGE_ID
and ato.name 				= 'SCROLLSPY'
and	apr.region_template_options like '%:' || ato.css_classes || ':%'
order by apr.display_sequence
```
