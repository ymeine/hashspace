export {
	name: 'Array update'
	category: 'Core'

	catchPhrase: '''Standard Array methods trigger the data-binding mechanisms.'''
	description: '''
		<p>
		The following standard methods of Array's prototype have been overridden for this purpose: <code>splice</code>, <code>push</code>, <code>pop</code>, <code>shift</code>, <code>unshift</code>, <code>reverse</code>, <code>sort</code>.
		</p>
		<p>
		In addition to those methods, one more has been added: <code>splice2</code>, see corresponding section for more information.
		</p>
		<p>
		This means that listeners added on the array will be notified about the changes.
		</p>
	'''

	# example: '''
	# 	# template example(array)

	# 	# /template
	# '''

	# sample: '''
	example: '''
		var actions = [
			{method: push, label: 'Push'},
			{method: pop, label: 'Pop'},
			{method: unshift, label: 'Unshift'},
			{method: shift, label: 'Shift'},
			{method: reverse, label: 'Reverse'},
			{method: sort, label: 'Sort'},
			{method: splice, label: 'Splice'},
			{method: splice2, label: 'Splice (2)'}
		]

		var array = [];



		# template example(array, actions)
			{foreach action in actions}
				— <a onclick="{action.method()}">{action.label}</a>&nbsp;
			{/foreach}
			—

			<br/>

			<ul>
			{foreach value in array}
				<li>{value}</li>
			{/foreach}
			</ul>
		#/template

		example(array, actions).render("output");


		function push() {array.push('pushed');}
		function pop() {array.pop();}

		function unshift() {array.unshift('unshift');}
		function shift() {array.shift();}

		function reverse() {array.reverse();}
		function sort() {
			array.sort(function(a, b) {
				if (a < b) return -1;
				if (a > b) return 1;
				return 0;
			});
		}

		function splice() {array.splice(1, 0, 'spliced-1', 'spliced-2');}
		function splice2() {array.splice2(1, 0, ['spliced2-1', 'spliced2-2'])}
	'''
}
