#Material APEX - Beta
This is a full featured Material Design Theme for APEX 5.

Here's a demo: https://apex.oracle.com/pls/apex/f?p=MATERIAL

The APEX application export is included in this repo.

##Changelog
####0.8.0
- **Theme Roller Support**, primary and secondary colors are now choosable from the theme roller!
- **New easier grid layout system**  [(view)](https://apex.oracle.com/pls/apex/f?p=MATERIAL:11)
- **New Date Picker**. We let go of the "pickadate.js" plugin for better compabilitiby. [(view)](https://apex.oracle.com/pls/apex/f?p=MATERIAL:25)
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
- **New Interactive Report Support** [(view)](https://apex.oracle.com/pls/apex/f?p=MATERIAL:62)
- **Enhanced Tabular Form Support** [(view)](https://apex.oracle.com/pls/apex/f?p=MATERIAL:61)
- **Reports Responsive Styles**: See Style 2 [(view)](https://apex.oracle.com/pls/apex/f?p=MATERIAL:16)
- Fixed issues with checkboxes and radio buttons
- Better HTML markup for reports

##Automatic Install
- Import the APEX application ```12192.sql``` in your workspace.

##Manual Install
- Fork the project on Github
- `npm install`
- `bower install materialize`
- `npm start`

You can now use your own Sass (I suggest you take a look at this: https://github.com/vincentmorneau/apex-gulpfile-sass)

---

Inspired by http://materializecss.com/  

You can help by filling issues through Github.