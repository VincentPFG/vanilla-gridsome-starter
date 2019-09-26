nodeExternals = require 'webpack-node-externals'

module.exports = (api) ->
	api.chainWebpack (server, { isServer }) ->
		if isServer
			server.externals [
				nodeExternals whitelist: [/^vuetify/]
			]
			
	api.loadSource (store) ->
		# // Use the Data store API here: https://gridsome.org/docs/data-store-api