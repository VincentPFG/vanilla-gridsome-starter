nodeExternals = require 'webpack-node-externals'
# axios = require 'axios'

module.exports = (api) ->
	api.chainWebpack (server, { isServer }) ->
		if isServer
			server.externals [
				nodeExternals whitelist: [
					/^vuetify/
					/\.(c|sa)ss$/
				]
			]