#Material APEX - Beta
This is a full featured Material Design Theme for APEX 5.

Here's a demo: https://apex.oracle.com/pls/apex/f?p=12192

The APEX application export is included in this repo.

##Changelog
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
- Bugs fixes
- A "showcase" section with adapted applications.