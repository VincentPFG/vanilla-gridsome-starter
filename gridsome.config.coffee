localPlugins = ('~/plugins/' + plugin for plugin in [
	'sass'
	'vuetify'
	'apollo'
	'vuex'
	'axios'
	'test'
	'ntest'
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

	chainWebpack: (config) ->
		config.module.rule 'coffee'
			.test /\.coffee$/
			.use 'coffee-loader'
			.loader 'coffee-loader'

	# configureWebpack: (config) ->
	# 	config.resolve.extensions.unshift '.coffee'
	# 	# patch Sass
	# 	for rule, i in config.module.rules
	# 		if String(rule.test) is String /\.sass$/
	# 			config.module.rules[i] =
	# 				test: /\.sass$/
	# 				use: [
	# 					'style-loader'
	# 					'css-loader'
	# 					loader: 'sass-loader'
	# 					options:
	# 						sassOptions:
	# 							indentedSyntax: yes
	# 				]
	# 	config