const gulp = require('gulp');
const htmlmin = require('gulp-htmlmin');
const cssmin = require('gulp-cssmin');
const uglify = require('gulp-uglify');
const path = require('path');

//  gulp 前端自动构建

// 1. 压缩html
gulp.task('htmlmin', () => {
    return gulp.src('src/html/*.html')
        .pipe(htmlmin({ collapseWhitespace: true }))
        .pipe(gulp.dest('dist/html'));
});

// 2. 压缩css
gulp.task('cssmin', () => {
    return gulp.src(['src/css/*.css'])
        .pipe(cssmin())
        .pipe(gulp.dest('dist/css'));
});

// 3. 压缩JS
gulp.task('jsmin', () => {
    return gulp.src(['src/js/*.js'])
        .pipe(uglify())
        .pipe(gulp.dest('dist/js'));
});
