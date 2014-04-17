i = require('importer').Importer module

export {
	name: '{log}'
	category: 'Statement'

	catchPhrase: '''<code>{log param1, param2, ...}</code> will log the given parameters.'''
	description: i.desc!

	example: '''
		# template example()
			{log scope}
		# /template
	'''
}
