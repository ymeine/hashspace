var gulp = require('gulp');
var build = require('./build');



gulp.task('default', ['watch'], function() {});

gulp.task('build', function() {
	return build.run();
});

gulp.task('watch', function() {
	return gulp.watch(['./input/**', './node_modules/builder/**'], ['build']);
});
