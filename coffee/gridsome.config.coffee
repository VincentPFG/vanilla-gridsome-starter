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
		use: '@gridsome/source-filesystem'
     	options:
       		path: 'posts/**/*.md'
        	typeName: 'Post'
        	remark:
          		plugins: []
	,
		use: 'gridsome-plugin-netlify-cms'
		options:
			publicPath: '/admin'
	]
	
	chainWebpack: (config) ->
		config.module.rule('coffee').test(/\.coffee$/).use('coffee-loader').loader 'coffee-loader'

	transformers:
		remark:
			externalLinksTarget: '_blank'
      		externalLinksRel: ['nofollow', 'noopener', 'noreferrer']
      		anchorClassName: 'icon icon-link'
     		plugins: []