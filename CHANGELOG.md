##Changelog
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