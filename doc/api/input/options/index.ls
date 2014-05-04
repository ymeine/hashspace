require! {
	fs
}

export {
	output: 'api'
	stylesheet: fs.readFileSync "#__dirname/stylesheet.css"
}
