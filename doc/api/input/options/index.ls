require! {
	fs
}

export {
	output: 'api.html'
	stylesheet: fs.readFileSync "#__dirname/stylesheet.css"
}
