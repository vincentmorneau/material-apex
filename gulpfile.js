// Material Design Gulpfile
// - - - - - - - - - - - - - - -
// This file processes all of the assets in the "client" folder
// and outputs the finished files in the "build" folder.

// 1. LIBRARIES
// - - - - - - - - - - - - - - -
var gulp = require('gulp'),
    plugins = require('gulp-load-plugins')(),
    del = require('del'),
    runSequence = require('run-sequence');

// 2. SETTINGS VARIABLES
// - - - - - - - - - - - - - - -
var paths = {
        client: 'client/',
        build: 'build/',
        sourcemaps: './',
        materialize: 'bower_components/materialize/'
    },
    assets = {
        js: 'assets/js/',
        css: 'assets/css/',
        scss: 'assets/scss/',
        img: 'assets/img/',
        vendor: 'assets/vendor/',
        font: 'assets/font/',
    },
    files = {
        js: '**/*.js',
        css: '**/*.css',
        scss: '**/*.scss',
        all: '**/*.*',
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
gulp.task('clean', function(cb) {
    del([paths.build], cb);
});

// Compiles the JavaScript (error handling via plumber)
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

// Cleans the build css directory before re-creating the css
gulp.task('clean-css', function(cb) {
    del([paths.build + assets.css], cb);
});

// Compiles scss and minifies css
gulp.task('scss', function() {
    return gulp.src(paths.client + assets.scss + files.scss)
        .pipe(plugins.plumber())
        .pipe(plugins.sourcemaps.init(sourcemapsOptions))
        .pipe(plugins.sass(sassOptions))
        .pipe(plugins.autoprefixer())
        .pipe(plugins.size(sizeOptions))
        .pipe(plugins.sourcemaps.write(paths.sourcemaps))
        .pipe(gulp.dest(paths.build + assets.css));
});

// Compiles scss and minifies css
gulp.task('css', function() {
    return gulp.src(paths.build + assets.css + files.css)
        .pipe(plugins.plumber())
        .pipe(plugins.minifyCss())
        .pipe(plugins.rename(renameOptions))
        .pipe(plugins.size(sizeOptions))
        .pipe(gulp.dest(paths.build + assets.css));
});

// Default task: builds your app
gulp.task('style', function() {
    runSequence('clean-css', 'scss', 'css', function() {});
});

// Optimizes img files
gulp.task('img', function() {
    return gulp.src(paths.client + assets.img + files.all)
        .pipe(plugins.imagemin())
        .pipe(gulp.dest(paths.build + assets.img));
});

// Copies vendor files as is
gulp.task('vendor', function() {
    return gulp.src(paths.client + assets.vendor + files.all)
        .pipe(gulp.dest(paths.build + assets.vendor));
});

// Copies font files as is
gulp.task('font', function() {
    return gulp.src(paths.materialize + 'font/' + files.all)
        .pipe(gulp.dest(paths.build + assets.font));
});

// Watch for changes and recompiles
gulp.task('watch', function() {
    gulp.watch(paths.client + assets.js + files.js, ['js']);
    gulp.watch(paths.client + assets.scss + files.scss, ['style']);
    gulp.watch(paths.client + assets.img + files.all, ['img']);
    gulp.watch(paths.client + assets.vendor + files.all, ['vendor']);
});

// Default task: builds your app
gulp.task('default', function() {
    runSequence('clean', ['js', 'style', 'img', 'vendor', 'font', 'watch'], function() {
        console.log("Successfully built.");
    });
});