module.exports = [
	{
		name: '{let}'
		category: 'Statement'

		catchPhrase: '''Creates local variables in the current scope.'''
		description: '''
			The scope is associated to a container block, and the latter can be:
			<ul>
				<li>template blocks</li>
				<li>html block elements</li>
				<li>condition blocks (<code>{if}</code>, <code>{else if}</code> or <code>{else}</code>)</li>
				<li><code>{foreach} block</code></li>
			</ul>

			<code>{let}</code> statements <strong>MUST</strong> appear at the beginning of the blocks where they appear!
		'''

		example: '''
			# template example()
				{let templateLevel}

				<div>
					{let htmlLevel1 = "htmlLevel1Value", htmlLevel2}
				</div>

				{if condition}
					{let ifLevel}
				{else if condition2}
					{let elseIfLevel}
				{else}
					{let elseLevel}
				{/if}

				{foreach value in container}
					{let foreachLevel}
				{/foreach}
			# /template
		'''

		# examples: [
		# 	{
		# 		name: 'template'
		# 		code: '''
		# 			# template example()
		# 				{let templateLevel}
		# 			# /template
		# 		'''
		# 	}
		# 	{
		# 		name: 'html block'
		# 		code: '''
		# 			<div>
		# 				{let htmlLevel1 = "htmlLevel1Value", htmlLevel2}
		# 			</div>
		# 		'''
		# 	}
		# 	{
		# 		name: 'condition'
		# 		code: '''
		# 			{if condition}
		# 				{let ifLevel}
		# 			{else if condition2}
		# 				{let elseIfLevel}
		# 			{else}
		# 				{let elseLevel}
		# 			{/if}
		# 		'''
		# 	}
		# 	{
		# 		name: 'foreach'
		# 		code: '''
		# 			{foreach value in container}
		# 				{let foreachLevel}
		# 			{/foreach}
		# 		'''
		# ]

		sample: '''

		'''
	}
]
