module.exports = (api, options) ->

    api.chainWebpack (config) ->
        config.module.rule 'coffee'
            .test /\.coffee$/
            .use 'coffee-loader'
            .loader 'coffee-loader'

    api.configureWebpack (config) ->
        config.resolve.extensions.unshift '.coffee'
        config