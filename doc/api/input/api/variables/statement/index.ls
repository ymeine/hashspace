i = require('importer').Importer module

module.exports = [
	{
		name: '{let}'
		category: 'Statement'

		catchPhrase: '''Creates local variables in the current scope. Multiple variables can be declared, and they can be initialized too.'''
		description: i.desc!

		example: i.ex!
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
	}
]
