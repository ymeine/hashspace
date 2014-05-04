var fs = require('fs');
var pathlib = require('path');

var builder = require('./builder');



function run() {
	var inputPath = pathlib.join(__dirname, 'input');
	var outputPath = pathlib.join(__dirname, 'output', 'api.md');
	var output = builder.toMarkdown(inputPath);

	fs.writeFileSync(outputPath, output);

	console.log('Build done with success');
};

exports.run = run;



if (require.main === module) {
	run();
}
