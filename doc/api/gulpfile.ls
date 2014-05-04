require! {
	gulp

	'./build'
}

# ------------------------------------------------------------------------------

gulp.task \default <[ watch ]> ->

# ------------------------------------------------------------------------------

gulp.task \build -> build.run off
gulp.task \build-live -> build.run!

# ------------------------------------------------------------------------------

gulp.task \watch ->	gulp.watch ['./input/**' './node_modules/builder/**'] <[ build-live ]>
