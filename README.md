#Material APEX - Beta
This is a full featured Material Design Theme for APEX 5.

Here's a demo: https://apex.oracle.com/pls/apex/f?p=12192

The APEX application export is included in this repo.

##Changelog
####0.6.0 Beta 2
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

####0.5.0 Beta 1
- Initial Beta Release

##Automatic Install
- Import the APEX application ```12192.sql``` in your workspace.

##Manual Install
- Fork the project on Github
- `npm install`
- `bower install materialize`
- `npm start`

You can now use your own Sass (I suggest you take a look at this: https://github.com/vincentmorneau/apex-gulpfile-sass)

##Beta Testing
If you find bugs, you can fill an issue through Github, send me a tweet or an email and I'll try to fix them as fast as possible!

---

It is strongly influenced by http://materializecss.com/  

I will continue to gather bugs and feedback from the community.

Next version will have:

- Better documentation
- More features
- Bugs fixes found in Beta 2
- A "showcase" section with adapted applications.