module.exports =

	siteName: 'Gridsome'

	plugins: [
		...(require '../plugins') [
			use: 'whitelist'
			options: [
				/\.(c|sa)ss$/
				/^vuetify/
			]
			'sass-patch'
			'coffeescript'
			'vuetify'
		]
		'gridsome-plugin-pug'
		use: '@gridsome/source-filesystem'
		options:
			path: 'blog/**/*.md'
			typeName: 'Post'
		'gridsome-plugin-netlify-cms'
		use: 'gridsome-plugin-netlify-cms-paths'
		options: contentTypes: ['Post']
		'gridsome-transformer-netlify'
	]

	transformers:
		remark:
			externalLinksTarget: '_blank'
			externalLinksRel: ['nofollow', 'noopener', 'noreferrer']
			anchorClassName: 'icon icon-link'
			plugins: []
		netlify: {}