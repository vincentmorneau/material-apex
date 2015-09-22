#Material APEX - Beta
This is a full featured Material Design Theme for APEX 5.

Here's a demo: https://apex.oracle.com/pls/apex/f?p=12192

The APEX application export is included in this repo.

##Changelog
####0.8.2
- **Removed Bower dependency. Using npm now.**
- **Added chips.** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:18)
- **RTL Support** (Right to Left) with a new Theme Style.
- **Added support for multi level menus in navigation bar.**
- Now possible to have 2 FAB (fixed action button) on the same page.
- More Theme Roller attributes.
- Modal bottom sheet's height is now configurable with Theme Roller.
- Tabs labels are more responsive and configurable.
- Badges in reports and dropdowns are now editable.
- Fixed an issue where collection reports always prints header.
- Fixed an display issue with tabs.
- Enhanced toast rendering with large values.
- Enhanced some of the templates stability.
- Better responsiveness on the navigation bar.
- More...

####0.8.1
- Content is now offset when sidebar is fixed
- Fixed navigation bar icons alignment on mobile
- Select list is now aligned properly with text fields
- Autocomplete item now has a material design look and feel
- Cascading LOVs are now supported
- Popup LOV in Tabular Forms are now supported
- Login Screen has a new template called "Page - Clean"
- Region titles are now aligned according to the specified template option 

##Automatic Install
- Import the APEX application ```12192.sql``` in your workspace.

##Manual Install
- Fork the project on Github
- `npm install`
- `npm start`

You can now use your own Sass (I suggest you take a look at this: https://github.com/vincentmorneau/apex-gulpfile-sass)

---

Inspired by http://materializecss.com/  

You can help by filling issues through Github.