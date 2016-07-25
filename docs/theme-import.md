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
