var fs = require('fs');
var pathlib = require('path');



function read(filepath) {
	return fs.readFileSync(filepath, 'utf-8');
}

function readJSON(name) {
	return JSON.parse(read(name + ".json"));
}

function contains(array, element) {
	return array.indexOf(element) >= 0;
}

function forEach(container, cb) {
	for (var index = 0, length = container.length; index < length; index++) {
		cb(container[index], index, container);
	}
}

function forOwn(container, cb) {
	for (var key in container) {
		if (container.hasOwnProperty(key)) {
			cb(container[key], key, container);
		}
	}
}

function mixin(dest, src) {
	return forOwn(src, function(value, key) {
		dest[key] = value;
	});
}





function walk(dirpath, cb) {
	var dirnames = [];
	var filenames = [];

	forEach(fs.readdirSync(dirpath), function(node) {
		var stat = fs.statSync(pathlib.join(dirpath, node));
		var category = stat.isDirectory() ? dirnames : filenames;
		category.push(node);
	});

	cb({
		dirpath: dirpath,
		dirnames: dirnames,
		filenames: filenames
	});

	forEach(dirnames, function(directory) {
		walk(pathlib.join(dirpath, directory), cb);
	});
}



function Section(spec) {
	mixin(this, spec);
}

Section.prototype.toMarkdown = function toMarkdown() {
	var title = this.title;
	var catchPhrase = this.catchPhrase;
	var description = this.description;
	var example = this.example;

	var parts = [];

	parts.push("----\n\n### " + title + "\n");

	if (catchPhrase != null) {
		parts.push(catchPhrase + "\n");
	}

	if (description != null) {
		parts.push(description + "\n");
	}
	parts.push("___Example:___\n\n```hashspace\n" + example + "\n```");

	return parts.join('\n');
};



function getSections(root) {
	var sections = [];

	walk(root, function(spec) {
		var dirpath = spec.dirpath;
		var dirnames = spec.dirnames;
		var filenames = spec.filenames;

		if (filenames.length > 0 && dirnames.length === 0) {
			var meta = readJSON(pathlib.join(dirpath, 'meta'));

			if (contains(filenames, 'desc.md')) {
				var description = read(pathlib.join(dirpath, 'desc.md'));
			}

			var example = read(pathlib.join(dirpath, 'ex.hsp'));

			if (contains(filenames, 'sample.hsp')) {
				var sample = read(pathlib.join(dirpath, 'sample.hsp'));
			}

			sections.push(new Section({
				title: meta.title,
				catchPhrase: meta.catchPhrase,
				description: description,
				example: example,
				sample: sample
			}));
		}
	});

	return sections;
}



function toMarkdown(root) {
	var parts = [];
	forEach(getSections(root), function(section) {
		parts.push(section.toMarkdown());
	});
	return parts.join('\n\n');
}

exports.toMarkdown = toMarkdown;
