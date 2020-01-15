module.exports =

	siteName: 'Gridsome'

	plugins: [
		...(require '../plugins') [
			'sass-patch'
			use: 'whitelist'
			options: [
				/\.(s?c|sa)ss$/
				/^vuetify/
			]
			'coffeescript'
			use: 'vuetify'
			options: require '../vuetify.theme.coffee'
		]
		'gridsome-plugin-pug'
		use: '@gridsome/source-filesystem'
		options:
			path: 'blog/**/*.md'
			typeName: 'Post'
		'gridsome-plugin-netlify-cms'
	]

	transformers:
		remark:
			externalLinksTarget: '_blank'
			externalLinksRel: ['nofollow', 'noopener', 'noreferrer']
			anchorClassName: 'icon icon-link'
			plugins: []
		netlify: {}