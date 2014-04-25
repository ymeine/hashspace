require! {
	fs
	node-path: path

	'loader'
}



export run = ->
	loader.clearCache!

	{api, options} = require './input'
	require! 'builder'

	path = node-path.join __dirname, 'output', options.output
	output = builder.apiToHTML api, options.stylesheet

	fs.writeFileSync path, output
	console.log 'Build done with success'





if require.main is module
	run!
