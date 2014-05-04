require! {
	fs
	node-path: path

	'loader'
}



export run = (clear) ->
	clear ?= yes

	if clear => loader.clearCache!

	{api, options} = require './input'
	require! 'builder'

	basepath = node-path.join __dirname, 'output', options.output

	html = builder.apiToHTML api, options.stylesheet
	markdown = builder.apiToMarkdown api

	fs.writeFileSync "#basepath.html", html
	fs.writeFileSync "#basepath.md", markdown

	console.log 'Build done with success'





if require.main is module
	run off
