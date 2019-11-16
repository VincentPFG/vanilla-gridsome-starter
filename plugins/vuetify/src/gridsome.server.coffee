nodeExternals = require 'webpack-node-externals'

module.exports = (api, options) ->

	api.chainWebpack (server, {isServer}) ->
		if isServer
			server.externals [
				nodeExternals whitelist: [
					/^vuetify/
					/\.(c|sa)ss$/
				]
			]