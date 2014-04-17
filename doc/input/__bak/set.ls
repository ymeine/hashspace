export {
	name: '$set(object, property, value)'
	category: 'Core'

	catchPhrase: '''Sets the specified <code>property</code> of the given <code>object</code> with the given <code>value</code>, notifying all observers of the object about the change.'''
	description: '''
		Observers are notified only if there is an actual change, that is if the new value is strictly different from the previous value.
	'''

	example: '''
		$set(object, "propertyName", "value");
	'''
	sample: '''
		var object = {property: "value"};
		$set(object, "property", "newValue");
	'''
}
