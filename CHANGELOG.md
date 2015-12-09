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

####0.8.3
- Fixed modal close
- Fixed file input layout

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

####0.8.0
- **Theme Roller Support**, primary and secondary colors are now choosable from the theme roller!
- **New easier grid layout system**  [(view)](https://apex.oracle.com/pls/apex/f?p=12192:11)
- **New Date Picker**. We let go of the "pickadate.js" plugin for better compabilitiby.
- The hamburger menu is now selectable as a component on page 0. Can be controled for conditions or authorization schemes.
- Now uses Official Google Icon web font
- Added template option for button regarding icon float
- Modal now prevents scrolling
- Removed the #APPLICATION_NAME# substitution string. Now uses the default #LOGO# substitution string
- Reworked on the Grid Documentation
- More documentation enhancements
- Fixed an issue with Materialbox not re-opening
- Fixed the success message layout
- Fixed Fixed Action Button display
- Fixed Modal Fixed Footer
- Fixed Sidenav height
- More...

####0.7.5
- **New Interactive Report Support** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:62)
- **Enhanced Tabular Form Support** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:61)
- **Reports Responsive Styles**: See Style 2 [(view)](https://apex.oracle.com/pls/apex/f?p=12192:16)
- Fixed issues with checkboxes and radio buttons
- Better HTML markup for reports

####0.7.0
- **New Modal Style: Bottom Sheet** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:34)
    - Modals can now be regions as well as pages
- **New Media components in the CSS section** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:13)
    - Responsive Images
    - Circular Images
    - Responsive Video (iframes and HTML5 videos)
- **New Template Options Helpers across every template** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:12)
    - Automatic vertical align (using flexbox)
    - Text alignment
    - Floats
    - Responsive content hiding
    - Truncating text
- **New Javascript Tabs for switching content** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:39)
- **New Pagination Component** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:29)
- Important Javascript performance enhancements
- Dropdown Fixes
- Fixed an issue where Textarea wasn't loaded properly
- Fixed an issue where label appears over checkboxes and radio buttons
- Fixed an issue in the Sidebar where text was overflowing
- Updated viewport meta to optimize mobile
- Enhanced notification UI
- Enhanced login page
- Better Flexbox support
- Renamed label templates to item templates
- Better footer structure
- Added #FAVICONS# support
- **Added Tabular Form support**
- CSS clean-up


####0.6.0
**This release focuses on stability enhancements, performance and bug fixes.**

- Now uses Lists for navigation bar and navigation menu
- Removed Navbar and Sidenav regions on page 0
    - Now uses User Interface settings
- Fixed Bug where the theme couldn't import into other apps
    - Added empty Breadcrumb Template
    - Added empty Legacy Calendar Template
- Date Picker enhancements on mobile
- Removed external dependency jQuery
- Now uses Google's CDN for jQuery
- Restructured the whole Scrollspy internal layout engine
- Added Shadow Template Options on buttons
- Added Background Color, Background Modifier and Text Color Template Options on Buttons
- Added Shadow example on the Button page
- Fixed Button height issue with no icons
- Fixed Flow Text issue
- Removed unnecessary Template Option on page template
- Reworked documentation for
    - SideNav
    - Sidebar
    - Parallax

####0.5.0
- Initial Beta Release
