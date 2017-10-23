## Changelog

#### v0.12.0
- Breaking changes
	- Button standard is now split into 3 different templates like UT (text, icon, text with icon)
- New features
	- **You can now use Material APEX while being 100% offline**
	- Collapsible component as a region template
- Enhancements
	- The footer now has theme roller support
	- Tabs component now has "Remember active tab" support
	- **Interactive report modals should be more stable**
	- **Interactive grid should be more stable**
- Bug fixes
	- Footer positioning in IE
	- Hamburger menu now hides when there is no menu entry
	- Quick picks on dropdowns are now working
	- Select lists validation message is more consistent
	- Firefox button rendering is fixed
	- Classic report card now works without button label
- More documentation enhancements...


#### v0.11.1
- Hot fix for the pulse button [(view)](https://apex.oracle.com/pls/apex/f?p=12192:21)
- Simplifies the release process

#### v0.11.0
- Breaking changes
	- Cards are now merged into one template. Please review yours.
	- IMG substitution string is now IMG_SRC. Please change yours.
	- Most button positions have changed. Please review yours.
	- Previously we had 2 region position for the footer (top and bottom). Now only the top is customizable and it's been renamed to "Footer".
- New features
	- **Pulse effect for buttons** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:21)
	- **Feature Discovery** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:38)
	- Badge List plugin is now supported [(view)](https://apex.oracle.com/pls/apex/f?p=12192:200)
	- Full width buttons
- Enhancements
	- **Modals now have automatic height**
	- **Modals can be set to full screen**
	- Date pickers are more accessible now
	- Lots of calendar fixes
	- Popup LOV now has a material design look and feel
- Bug fixes
	- [Duplicated spinner](https://github.com/vincentmorneau/material-apex/issues/221)
	- Interactive Report on mobile
	- More...

#### v0.10.0
- New features
	- APEX 5.1 compatible
	- Interactive Grids [(view)](https://apex.oracle.com/pls/apex/f?p=12192:80)
	- Data Loading Wizard [(view)](https://apex.oracle.com/pls/apex/f?p=12192:90)
- Enhancements
	- Date Pickers
	- Interactive Report [(view)](https://apex.oracle.com/pls/apex/f?p=12192:62)
- & more bug fixes

#### v0.9.6
- New features
	- **Timeline** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:47)
	- **Wizard** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:72)
	- **Calendar** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:41)
	- **Date Pickers** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:25)
	- **Login Page** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:101)
	- **Error Page** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:102)
- Enhancements
	- **Now support for Font-Awesome (as well as Material Design Icons)** [(view)](https://github.com/vincentmorneau/material-apex/issues/173)
	- **Page 0 no longer requires the hamburger menu, it is now computed** [(view)](https://github.com/vincentmorneau/material-apex/issues/161)
	- **Fixed side navigation has a better look and feel** [(view)](https://github.com/vincentmorneau/material-apex/issues/144)
	- Top and bottom region button has better support [(view)](https://github.com/vincentmorneau/material-apex/issues/157)
	- Standard and card regions can now have buttons alongside the title (left and right) [(view)](https://github.com/vincentmorneau/material-apex/issues/146)
	- Added icon support for some region templates (Standard, Card) [(view)](https://github.com/vincentmorneau/material-apex/issues/151)
	- Added spacers template options to regions, buttons and items [(view)](https://github.com/vincentmorneau/material-apex/issues/128)
- Bug fixes
	- Checkbox labels now showing with an empty label [(view)](https://github.com/vincentmorneau/material-apex/issues/158)
	- Responsive text only applies to display only items now [(view)](https://github.com/vincentmorneau/material-apex/issues/159)
	- Input labels now inherit the region text color [(view)](https://github.com/vincentmorneau/material-apex/issues/156)
	- Switch has better positioning [(view)](https://github.com/vincentmorneau/material-apex/issues/147)
	- Horizontal fields has better alignment [(view)](https://github.com/vincentmorneau/material-apex/issues/149)
	- App logo has better positioning [(view)](https://github.com/vincentmorneau/material-apex/issues/154)
	- Nested card region has better support [(view)](https://github.com/vincentmorneau/material-apex/issues/152)
	- Theme Roller computation enhancements (CSS calc) [(view)](https://github.com/vincentmorneau/material-apex/issues/162)
	- Modal button has better positioning [(view)](https://github.com/vincentmorneau/material-apex/issues/165)
- Others
	- Changed Theme ID [(view)](https://github.com/vincentmorneau/material-apex/issues/148)
	- Dropped RTL support [(view)](https://github.com/vincentmorneau/material-apex/issues/153)
	- Merged a few pages in the demo app
	- Added documentation for available substitution strings in named reports

[More here.](https://github.com/vincentmorneau/material-apex/milestone/11)

#### v0.9.5
- New features
	- **Switch Component** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:25)
	- **Range Component** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:25)
	- **Loading Indicator Dynamic Action** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:28)
	- **Over 80 New Theme Roller Attributes**
- Enhancements
	- Responsive Text Template Options for Display Only Items
	- JavaScript performance enhancements
	- Preloader region is now a plugin
	- Code Region is now a plugin
- Demo Application menu was restructured completely

#### v0.9.4
- New features
	- **Horizontal Cards** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:22)
	- **Carousel Component** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:45)
	- Fixed Action Button can now display text on hover
- Enhancements
	- **Completely new dynamic documentation**
	- Autocomplete input greatly enhanced
	- Slider greatly enhanced
	- Inputs can now be colored via template options
	- Card templates are much easier to use (Regions & Reports)
	- Collection templates are much easier to use (Lists & Reports)
	- Tabs component is now usable through a Region template instead of a List template
	- Merged other Region, Report and List templates
- Bug fixes
	- Fixed inline validation message on some input fields

#### v0.9.3
- New features
	- Supports APEX Region Display Selector
	- New error page design
	- New success message rendering
	- Adds lots of template options
- Enhancements
	- Better rendering of read only and display only fields
	- IR labels are now translated
	- Navbar has an active state for current pages
	- Now possible to close success messages
	- Better sequencing of template options
	- Footer is no longer hardcoded
- Bug fixes
	- Fixed rendering of checkboxes with no labels
	- Fixed recursive hiding of sub regions
	- Fixed duplicated date icon
	- Fixed menu search bar
	- Fixed icon substitution strings in all list templates
	- Fixed HOME_LINK
	- Removed hardcoded favicon

#### v0.9.2
- New features:
	- Global Search in navigation bar [(view)](https://apex.oracle.com/pls/apex/f?p=12192:1)
	- Support for Popup LOV [(view)](https://apex.oracle.com/pls/apex/f?p=12192:25)
	- New download option: Empty application. Contains the theme and page 0.
- Bug fixes:
	- Tabular form select fix
	- Tabular form date pickers fix
	- Tabular form checkboxes fix
	- Parallax height is not fixed anymore
	- Parallax content is now usable

#### v0.9.1
- Now provides three download options.
- Better styling for inline validation messages.
- Using a new engine for building the project.
- Bug fixes
	- Collapsible triggers
	- Usage of APEX popup LOV now works
	- Tabular Form select list now works
	- Overflow on large LOV's on modal screens
	- Notification box position doesn't overflow on Scrollspy anymore

#### v0.9.0
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

**Upgrading from 0.8.3 and below**
0.9.0 introduces some `template` and `template option` changes across buttons and regions. Some of the defaults values have changed. You may need to re-apply the default values to some of your buttons and regions.
- `Fixed Action Button` is not a template option anymore. It has it's own button template now.
- `Float` is not a template option anymore. This can be achieved using the `Region alignment` template option now.

#### v0.8.3
- Fixed modal close
- Fixed file input layout

#### v0.8.2
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

#### v0.8.1
- Content is now offset when sidebar is fixed
- Fixed navigation bar icons alignment on mobile
- Select list is now aligned properly with text fields
- Autocomplete item now has a material design look and feel
- Cascading LOVs are now supported
- Popup LOV in Tabular Forms are now supported
- Login Screen has a new template called "Page - Clean"
- Region titles are now aligned according to the specified template option

#### v0.8.0
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

#### v0.7.5
- **New Interactive Report Support** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:62)
- **Enhanced Tabular Form Support** [(view)](https://apex.oracle.com/pls/apex/f?p=12192:61)
- **Reports Responsive Styles**: See Style 2 [(view)](https://apex.oracle.com/pls/apex/f?p=12192:16)
- Fixed issues with checkboxes and radio buttons
- Better HTML markup for reports

#### v0.7.0
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


#### v0.6.0
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

#### v0.5.0
- Initial Beta Release
