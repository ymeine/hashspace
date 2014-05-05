var gulp = require('gulp');
var markdown = require('gulp-markdown');

var build = require('./build');



gulp.task('default', ['watch'], function() {});

gulp.task('build', function() {
	return build.run();
});

gulp.task('render', function() {
	return gulp.src('api.md').pipe(markdown()).pipe(gulp.dest('./'));
});

gulp.task('watch', function() {
	return gulp.watch(['./input/**', './node_modules/builder/**'], ['build', 'render']);
});
