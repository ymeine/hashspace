i = require('importer').Importer module

export {
	name: 'log(object... [, metaData)]'
	category: 'Core'

	catchPhrase: '''Logs data with <code>debug</code> level.'''
	description: i.desc!

	example: '''
		log("message");
	'''

	sample: i.sample!
}
