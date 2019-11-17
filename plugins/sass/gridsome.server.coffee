nodeExternals = require 'webpack-node-externals'

module.exports = (api, options) ->

	api.chainWebpack (server, {isServer}) ->
		if isServer
			server.externals [
				nodeExternals whitelist: [
					/\.(c|sa)ss$/
				]
			]

	# patch Sass
	api.configureWebpack (config) ->
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