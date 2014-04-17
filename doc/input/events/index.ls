i = require('importer').Importer module

module.exports = [
	{
		name: 'Event handlers'
		category: 'Expression'

		catchPhrase: '''You can use function expressions inside DOM elements' event handlers definitions.'''

		description: '''
			This means that instead of giving a piece of JavaScript code to be executed in the global scope, you can use the standard call mechanisms, in the scope of the current module (file).
		'''

		example: i.ex!
		sample: ''''''
	}
]
