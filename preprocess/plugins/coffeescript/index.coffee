module.exports = ({chainWebpack, configureWebpack}) ->

    chainWebpack (config) ->
        config.module.rule 'coffee'
            .test /\.coffee$/
            .use 'coffee-loader'
            .loader 'coffee-loader'

    configureWebpack (config) ->
        config.resolve.extensions.unshift '.coffee'
        config