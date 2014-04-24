require! {
	fs
	node-path: path

	'loader'
}

loader = loader.Loader module

export run = ->
	{api, options} = loader.reload './input'
	builder = loader.reload 'builder'

	path = node-path.join __dirname, 'output', options.output
	output = builder.apiToHTML api, options.stylesheet

	fs.writeFileSync path, output
	console.log 'Build done with success'



if require.main is module
	run!
