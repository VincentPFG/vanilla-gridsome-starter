localPlugins = ('~/plugins/' + plugin for plugin in [
	'coffeescript'
	'sass'
	'vuetify'
	'apollo'
	'vuex'
	'axios'
])

module.exports =

	siteName: 'Gridsome'

	plugins: [
		...localPlugins
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