# Theme Import

1. Import `empty-app.sql` from the [latest release](https://github.com/vincentmorneau/material-apex/releases/latest) in your workspace
2. Go to your existing application
3. Go to Shared Components - Themes
4. Select Restore Theme Subscription ![restore1](img/restore1.png)
5. Follow the instructions ![restore2](img/restore2.png)

---

Make sure the following components are up to date:

#### Application Substitution Strings
Name | Value
--- | ---
PATH | `#THEME_IMAGES#`

#### Page 0
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
