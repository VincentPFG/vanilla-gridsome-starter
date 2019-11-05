module.exports = 
	siteName: 'Gridsome'

	plugins: [
		use: 'gridsome-plugin-pug'
	,
		use: '@gridsome/source-filesystem'
		options:
			path: 'blog/**/*.md'
			typeName: 'Post'
	,
		use: 'gridsome-plugin-netlify-cms'
	,
		use: 'gridsome-plugin-netlify-cms-paths'
		options: contentTypes: ['Post']
	]

	transformers:
		remark:
			externalLinksTarget: '_blank'
			externalLinksRel: ['nofollow', 'noopener', 'noreferrer']
			anchorClassName: 'icon icon-link'
			plugins: []

	chainWebpack: (config) ->
		config.module.rule 'coffee'
			.test /\.coffee$/
			.use 'coffee-loader'
			.loader 'coffee-loader'

	configureWebpack: (config) ->
		for rule, i in config.module.rules
			if String(rule.test) is String /\.sass$/
				config.module.rules[i] =
					test: /\.sass$/
					use: [
						'style-loader'
						'css-loader'
						loader: 'sass-loader'
						options:
							sassOptions:
								indentedSyntax: yes
					]
		config