require! {
	fs
	pathlib: path

	'loader'
}



export run = (clear) ->
	clear ?= yes
	if clear => loader.clearCache!

	require! 'builder'

	inputPath = pathlib.join __dirname, 'input'
	outputPath = pathlib.join __dirname, 'output', 'api.md'

	output = builder.toMarkdown inputPath
	fs.writeFileSync outputPath, output

	console.log 'Build done with success'





if require.main is module
	run off
