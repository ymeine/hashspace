module.exports = [
	{
		name: 'Template'
		category: 'Statement'

		catchPhrase: '''<code># template</code> ... <code># /template</code> defines a template.'''

		description: '''
			For reminder the template definition follows the principles of function definition: a name and a list of formal parameters.

			The whole template is converted to a JavaScript function, which returns a template instance with the given parameters when it gets called.
		'''

		example: '''
			# template hello(name)
				Hello {name}!
			# /template

			var instance = hello("World");
		'''

		sample: '''
			# template hello(name)
				Hello {name}!
			# /template

			hello("World").render("output");
		'''
	}

################################################################################

	{
		name: 'template.render(DOMElementId)'
		category: 'Core'

		catchPhrase: '''Renders a template instance into the DOM element corresponding to the given id.'''

		description: ''''''

		example: '''
			# template hello(name)
				Hello {name}!
			# /template

			hello("World").render("output");
		'''

		sample: '''
			# template example(id)
				<div id="{id}"></div>
			# /template

			# template included()
				I am included using a DOM id! (there are better alternatives to do that though)
			# /template

			var id = "uniqueId";
			example(id).render("output");
			included().render(uniqueId);
		'''
	}

################################################################################

	{
		name: 'Create sub-template instances'
		category: 'Statement'

		catchPhrase: '''<code>&lt;#subTemplateName param1="param1Value param2="param2Value"/&gt;</code>'''
		description: '''
			This works as if it were a standard HTML element: the output will be generated at the place you put the statement and parameters are passed as attributes. <strong>Note that</strong> in this case the parameters are passed by name, not by their position.
		'''

		example: '''
			# template example()
				<#property value="..." key="..." />
			# /template

			# template property(key, value)
			# /template
		'''
	}
]
