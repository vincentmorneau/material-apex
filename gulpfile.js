// Material APEX Gulpfile
// - - - - - - - - - - - - - - -
// This file processes all of the assets in the "client" folder
// and outputs the finished files in the "build" folder.

// 1. LIBRARIES
// - - - - - - - - - - - - - - -
var gulp = require('gulp'),
    plugins = require('gulp-load-plugins')(),
    del = require('del'),
    runSequence = require('run-sequence'),
    config = require('./config.json');


// 2. SETTINGS VARIABLES
// - - - - - - - - - - - - - - -
var paths = {
        client: 'client/',
        build: 'build/',
        sourcemaps: './',
        materialize: 'node_modules/materialize-css/'
    },
    assets = {
        js: 'assets/js/',
        css: 'assets/css/',
        scss: 'assets/scss/',
        lib: 'assets/lib/',
        img: 'assets/img/',
        font: 'assets/font/'
    },
    files = {
        js: '**/*.js',
        css: '**/*.css',
        scss: '**/*.scss',
        all: '**/*.*'
    },
    sizeOptions = {
        showFiles: true
    },
    renameOptions = {
        suffix: '.min'
    },
    sourcemapsOptions = {
        loadMaps: true
    },
    sassOptions = {
        errLogToConsole: true,
        sourcemap: true,
        includePaths: [paths.materialize + 'sass/']
    };

// 3. TASKS
// - - - - - - - - - - - - - - -
// Cleans the build directory
gulp.task('clean-build', function() {
    return del([paths.build]);
});

// Javascript handling
gulp.task('js', function() {
    gulp.src(paths.materialize + 'dist/js/materialize.min.js')
        .pipe(gulp.dest(paths.build + assets.js));

    gulp.src(paths.client + assets.js + 'apex-init.js')
        .pipe(plugins.plumber())
        .pipe(plugins.jshint())
        .pipe(plugins.jshint.reporter('jshint-stylish'))
        .pipe(plugins.sourcemaps.init())
        .pipe(plugins.concat('apex-init.js'))
        .pipe(plugins.size(sizeOptions))
        .pipe(plugins.sourcemaps.write(paths.sourcemaps))
        .pipe(gulp.dest(paths.build + assets.js))
        .pipe(plugins.uglify()).on('error', function(e) {})
        .pipe(plugins.rename(renameOptions))
        .pipe(plugins.size(sizeOptions))
        .pipe(gulp.dest(paths.build + assets.js));

    return gulp.src([paths.client + assets.js + files.js
                    ,'!' + paths.client + assets.js + 'apex-init.js'])
        .pipe(plugins.plumber())
        .pipe(plugins.jshint())
        .pipe(plugins.jshint.reporter('jshint-stylish'))
        .pipe(plugins.sourcemaps.init())
        .pipe(plugins.concat('app.js'))
        .pipe(plugins.size(sizeOptions))
        .pipe(plugins.sourcemaps.write(paths.sourcemaps))
        .pipe(gulp.dest(paths.build + assets.js))
        .pipe(plugins.uglify()).on('error', function(e) {})
        .pipe(plugins.rename(renameOptions))
        .pipe(plugins.size(sizeOptions))
        .pipe(gulp.dest(paths.build + assets.js));
});

// Compiles scss, adds autoprefixer and sourcemaps
gulp.task('scss', function() {
    return gulp.src(paths.client + assets.scss + files.scss)
        .pipe(plugins.plumber())
        .pipe(plugins.sourcemaps.init(sourcemapsOptions))
        .pipe(plugins.sass(sassOptions))
        .pipe(plugins.autoprefixer())
        .pipe(plugins.size(sizeOptions))
        .pipe(plugins.sourcemaps.write(paths.sourcemaps))
        .pipe(gulp.dest(paths.client + assets.css));
});

// CSS handling
gulp.task('css', function() {
    // copy un-minified css and map file to dist folder
    gulp.src(paths.client + assets.css + files.all)
        .pipe(gulp.dest(paths.build + assets.css));

    // RTL support
    gulp.src(paths.client + assets.css + files.css)
        .pipe(plugins.plumber())
        .pipe(plugins.rtlcss())
        .pipe(plugins.rename({ suffix: '.rtl' }))
        .pipe(plugins.size(sizeOptions))
        .pipe(gulp.dest(paths.build + assets.css))
        .pipe(plugins.minifyCss())
        .pipe(plugins.rename(renameOptions))
        .pipe(plugins.size(sizeOptions))
        .pipe(gulp.dest(paths.build + assets.css));

    // Minifies CSS
    return gulp.src(paths.client + assets.css + files.css)
        .pipe(plugins.plumber())
        .pipe(plugins.minifyCss())
        .pipe(plugins.rename(renameOptions))
        .pipe(plugins.size(sizeOptions))
        .pipe(gulp.dest(paths.build + assets.css));
});

// Sequentially run tasks 'scss' and 'css'
gulp.task('scss-css', function() {
    runSequence('scss', 'css', function() {});
});

// Copies img files as is
gulp.task('img', function() {
    return gulp.src(paths.client + assets.img + files.all)
        .pipe(gulp.dest(paths.build + assets.img));
});

// Copies font files as is
gulp.task('font', function() {
    return gulp.src(paths.materialize + 'font/' + files.all)
        .pipe(gulp.dest(paths.build + assets.font));
});

// Copies lib files as is
gulp.task('lib', function() {
    return gulp.src(paths.client + assets.lib + files.all)
        .pipe(gulp.dest(paths.build + assets.lib));
});

// Watch for changes and recompiles
gulp.task('watch', function() {
    gulp.watch(paths.client + assets.js + files.js, ['js']);

    // sass support
    if (config.enableSass) {
        gulp.watch(paths.client + assets.scss + files.scss, ['scss-css']);
    } else {
        gulp.watch(paths.client + assets.css + files.css, ['css']);
    }

    gulp.watch(paths.client + assets.img + files.all, ['img']);
    gulp.watch(paths.client + assets.lib + files.all, ['lib']);
});

// Default task: builds your app
gulp.task('default', function() {
    // default task order
    var tasks = ['js', 'img', 'lib', 'font'];

    // sass support
    if (config.enableSass) {
        tasks.unshift('scss-css');
    } else {
        tasks.unshift('css');
    }

    // run tasks
    runSequence('clean-build', 'watch', tasks, function() {
        console.log("Successfully built!");
    });
});
