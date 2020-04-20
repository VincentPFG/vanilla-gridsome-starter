module.exports = ({ chainWebpack }, options) => {
	chainWebpack((server, { isServer }) => {
		if (isServer) {
			server.externals([
				require('webpack-node-externals')({
					whitelist: options
				})
			])
		}
	})
}
