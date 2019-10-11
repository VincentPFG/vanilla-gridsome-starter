nodeExternals = require 'webpack-node-externals'
axios = require 'axios'

module.exports = (api) ->
	api.chainWebpack (server, { isServer }) ->
		if isServer
			server.externals [
				nodeExternals whitelist: [
					/^vuetify/
					/\.(c|sa)ss$/
				]
			]
			
	api.loadSource ({addCollection}) ->
		{data} = await axios.get 'http://localhost:1337/personnes'
		# console.log typeof addCollection
		collection = addCollection 'Personnes'
		for item in data
			collection.addNode item

	# api.loadSource (actions) ->
	# 	console.log 'addCollection: ', actions.addCollection