#Material APEX - Beta
This is a full featured Material Design Theme for APEX 5.

Here's a demo: https://apex.oracle.com/pls/apex/f?p=12192

The APEX application export is included in this repo.

##Changelog
####0.9.0
- **NEW:** Transitions [(view)](https://apex.oracle.com/pls/apex/f?p=12192:43)
- **NEW:** Scrollfire [(view)](https://apex.oracle.com/pls/apex/f?p=12192:44)
- **NEW:** Breadcrumbs [(view)](https://apex.oracle.com/pls/apex/f?p=12192:42)
- **NEW:** Multi Select [(view)](https://apex.oracle.com/pls/apex/f?p=12192:25)
- **NEW:** Fixed Action Buttons [(view)](https://apex.oracle.com/pls/apex/f?p=12192:21)
    - Horizontal FAB
    - Click to toggle FAB
    - Within it's container FAB
    - FAB now has it's own template
- Material APEX now has 3 Dynamic Action Items
    - Toasts
    - Staggered List
    - Fade In Image
- Tabs are now scrollable
- Added a wave effect to the Sidenav parent elements
- Fixed a bug where the IR column headers wouldn't appear under a tab
- Image item now has it's own template
- Enhanced some template option intuitiveness
- Fixed some IE bugs all over...
- More bugs fixes...
- Enhanced the Gulpfile

See `CHANGELOG.md` for more details.

###Upgrading from 0.8.3 and below
0.9.0 introduces some `template` and `template option` changes across buttons and regions. Some of the defaults values have changed. You may need to re-apply the default values to some of your buttons and regions.
- `Fixed Action Button` is not a template option anymore. It has it's own button template now.
- `Float` is not a template option anymore. This can be achieved using the `Region alignment` template option now.

##Automatic Install
- Import the APEX application `12192.sql` in your workspace.

##Manual Install
- `npm install`
- `npm start`

You can now use your own Sass (I suggest you take a look at this: https://github.com/vincentmorneau/apex-gulpfile-sass)

---

Inspired by http://materializecss.com/  

You can help by filling issues through Github.
