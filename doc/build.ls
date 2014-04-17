require! {
	fs

	'builder'

	'./input'
}

const filename = 'api.html'

output = builder.apiToHTML input
fs.writeFileSync filename, output
