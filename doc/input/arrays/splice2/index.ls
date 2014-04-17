export {
	name: 'Array.prototype.splice2(index, howMany, elements)'
	category: 'Core'

	catchPhrase: '''Equivalent of standard <code>splice</code> but using a list of items instead of relying on the variable length of the arguments list.'''
	description: '''
		This method triggers the data-binding mechanisms.
	'''

	example: '''
		var array = ['a', 'b', 'e', 'f'];
		array.splice2(2, 0, ['c', 'd']); // => ['a', 'b', 'c', 'd', 'e', 'f']
	'''

	sample: '''
		# template example(array)
			<a onclick="{update()}">Update</a>

			<ul>
			{foreach value in array}
				<li>{value}</li>
			{/foreach}
			</ul>
		# /template

		var array = ['a', 'b', 'e', 'f'];

		example(array).render("output");

		function update() {
			array.splice2(2, 0, ['c', 'd']);
		}
	'''
}
