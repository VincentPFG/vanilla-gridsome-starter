module.exports = {
	siteName: 'Gridsome',
	plugins: [
		...require('./localPluginsHelper')([
			'sass-patch',
			{
				use: 'whitelist',
				options: [/\.(s?c|sa)ss$/, /^vuetify/]
			},
			'vuetify'
		]),
		'gridsome-plugin-pug',
		{
			use: '@gridsome/source-filesystem',
			options: {
				path: 'blog/**/*.md',
				typeName: 'Post'
			}
		},
		'gridsome-plugin-netlify-cms'
	]
}
