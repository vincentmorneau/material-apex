# Theme Import

**IMPORTANT:** Updating a theme is not fully supported by Oracle yet. Upgrading the theme of an existing app dismisses all template options that you might have selected. See:
- https://github.com/vincentmorneau/material-apex/issues/83
- https://twitter.com/vincentmorneau/status/707650168129265664
- https://community.oracle.com/message/13733156
- https://community.oracle.com/message/14356542#14356542

#### Import the file `theme-export.sql` from the [latest release](https://github.com/vincentmorneau/material-apex/releases/latest) in your existing application.
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
{search bar} | Static Content | Search Bar | *None* |
{sidenav header} | Classic Report | Item Container | *None* | **See Below (1)*

*Source (1) Example:
```sql
select '/img/sample-1.jpg' background_img
    , '/img/profile-picture.jpeg' profile_img
    , '#' profile_link
    , 'Vincent Morneau' text_line_1
    , 'vmorneau@insum.ca' text_line_2
from dual
```

##### Items
Name | Type | Label | Region | Template
--- | --- | --- | --- | ---
P0_SEARCH | Text Field | `<i class="material-icons">search</i>` | {search bar} | Standard
