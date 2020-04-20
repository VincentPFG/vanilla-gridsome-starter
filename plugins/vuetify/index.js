module.exports = ({ configureWebpack }) => {
	configureWebpack({
		plugins: [new (require('vuetify-loader/lib/plugin'))()]
	})
}
