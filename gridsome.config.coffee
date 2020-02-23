colors = require 'vuetify/es5/util/colors'

localPlugins = (plugins) -> for id in plugins
    id = use: id if (typeof id) is 'string'  
    id.use = '~/plugins/' + id.use
    id

vuetify = theme:
	dark: yes
	themes:
		light: {}
		dark: {}

module.exports =

	siteName: 'Gridsome'

	plugins: [
		...localPlugins [
			'sass-patch'
			use: 'whitelist'
			options: [
				/\.(s?c|sa)ss$/
				/^vuetify/
			]
			'coffeescript'
			use: 'vuetify'
			options: vuetify
		]
		'gridsome-plugin-pug'
		use: '@gridsome/source-filesystem'
		options:
			path: 'blog/**/*.md'
			typeName: 'Post'
		'gridsome-plugin-netlify-cms'
		# '~/plugins/js/print-webpack-config'
	]

	transformers:
		remark:
			externalLinksTarget: '_blank'
			externalLinksRel: ['nofollow', 'noopener', 'noreferrer']
			anchorClassName: 'icon icon-link'
			plugins: []
		netlify: {}