# Theme Import

**IMPORTANT:** Updating a theme is not fully supported by Oracle yet. Upgrading the theme of an existing app dismisses all template options that you might have selected. See:
- https://github.com/vincentmorneau/material-apex/issues/83
- https://twitter.com/vincentmorneau/status/707650168129265664
- https://community.oracle.com/message/13733156

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
##### Regions
Name | Type | Position | Template | Source
--- | --- | --- | --- | ---
{hamburger menu} | Static Content | Hamburger Menu | *None* | See below
{search bar} | Static Content | Search Bar | *None* |
{region display selector} | Region Display Selector | Region Display Selector | *None* |
```html
<a href="#" id="menu-trigger" class="button-collapse" data-activates="app-sidenav"><i class="material-icons left">menu</i></a>
```

##### Items
Name | Type | Label | Region | Template
--- | --- | --- | --- | ---
P0_SEARCH | Text Field | `<i class="material-icons">search</i>` | {search bar} | Standard
