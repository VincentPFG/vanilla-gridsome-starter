module.exports = 
	siteName: 'Gridsome'

	plugins: [
		use: 'gridsome-plugin-pug'
	,
		use: '@gridsome/source-filesystem'
		options:
			path: 'blog/**/*.md'
			typeName: 'Post'
	]
	
	chainWebpack: (config) ->
		config.module.rule('coffee').test(/\.coffee$/).use('coffee-loader').loader 'coffee-loader'

	transformers:
		remark: {}