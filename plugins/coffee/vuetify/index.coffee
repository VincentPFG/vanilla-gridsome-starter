module.exports = ({configureWebpack}) ->

    configureWebpack (config) ->
        config.plugins.push new (require 'vuetify-loader/lib/plugin')
        config