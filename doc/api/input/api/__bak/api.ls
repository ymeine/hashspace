export entries = [
	{
		name: 'template'
		category: 'Statement'

		description: '''
			Defines a function which generates a DOM fragment.

			This is the main statement in hashspace. It generates a classical JavaScript function, with the specified name and list of formal parameters.

			The particularity of the statement is that its content is not JavaScript code, but HTML template, whose placeholder are dynamically replaced, most of the time according to the input parameters.

			The generated function returns what we call a template node. See below for available methods on it.

			The fact that the statement generates a JavaScript object (function) means that you can do with it anything you would be able to do in pure JavaScript, like for instance export it.
		'''

		example: '''
			# template hello(name)
		        Hello {name}!
			# /template

			hello("World").render("output");
		'''
	}

	{
		name: 'expressions'
		category: 'Statement'

		description: '''
			A template expression is a way to introduce dynamism.

			Syntactically they appear between curly braces.

			There are mainly two kinds of expressions:
			<ul>
				<li>the ones returning a value: function calls, JavaScript expressions, </li>
				<li>the ones controlling the execution flow of the template: conditions, loops, ...</li>
			</ul>

			Note that objects used in expressions are automatically bound.
		'''
	}

	{
		name: '$set(object, property, value)'
		category: 'Data-binding'

		description: '''
			Sets the value of the property of the given object, notifying all listeners registered on this property.
		'''

		example: ''''''
	}

	{
		name: 'event handler'
		category: 'Statement'

		description: '''
			You can use function expressions inside element event handlers definition.

			A function expression is a template expression in which a standard function call is performed. This is somehow like if you were setting the handler using the DOM API.

			Note that the data-binding automatically put in place when executing the template will assure that the output is updated regarding the changes made on the parameters of the template. However an important optimization happens in the case of event handlers: the refreshing of the output occurs only when the handler has completely finished executing. Thus you can do several modifications in your objects, without triggering too many refreshes.
		'''

		example: '''
			# template message(msg)
			    <div title="click me!" onclick="{changeMessage()}" onselectstart="return false">
			        {if msg.isWarning}<div class="warning">WARNING: </div>{/if}
			        {msg.text}
			    </div>
			# /template

			function changeMessage() {
			    count++;
			    switch(count%3) {
			        case 0:
			            msg.isWarning = false;
			            msg.text = "Click me to discover hashspace event handlers";
			            break;
			        case 1:
			            msg.text = "Well done - you called the event handler and updated the data model in a row!";
			            break;
			        case 2:
			            msg.isWarning = true;
			            msg.text = "If you click again you will be back to first step!";
			            break;
			    }
			}
		'''
	}

	{
		name: 'conditions'
		category: 'Statement'

		description: '''
			You can conditionally execute parts of the template using either {if}/{if else}/{else} statements or using a ternary expression.


		'''
		example: ''''''
	}



	# --------------------------------------------------------------------------



	{
		name: 'Loop over an array'
		category: 'Expression'

		catchPhrase: '''Use the <code>{foreach receiver1, receiver2 in container}</code> expression to loop over an object or an array.'''
		description: '''
			You can define two receiver variables, for which the order is important and will be:

			<ul>
				<li>value, index in the case of an array</li>
				<li>key, value in the case of any other object</li>
			</ul>

			Also each iteration creates a new scope with those current receivers, which means that any expression placed inside the loop will be bound to them.
		'''

		example: '''
			#template example(array, object)
				Array example: <br/>

				<ul>
				{foreach item, index in array}
					<li>{index}: {item}</li>
				{/foreach}
				</ul>
				<hr/>

				Object example: <br/>

				<ul>
				{foreach property, value in object}
					<li>{property}: {value}</li>
				{/foreach}
				</ul>
			# /template

			var array = [
				'Item 1',
				'Item 2'
			];

			var object = {
				key1: 'Value 1',
				key2: 'Value 2'
			}

			example(array, object).render("output");
		'''
	}
]

# export categories = [
# 	{
# 		name: 'Statement'
# 	}
# ]
