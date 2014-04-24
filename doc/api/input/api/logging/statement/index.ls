i = require('importer').Importer module

export {
	name: '{log}'
	category: 'Statement'

	catchPhrase: i.catch!
	description: i.desc!

	example: '''
		# template example()
			{log scope}
		# /template
	'''
}
