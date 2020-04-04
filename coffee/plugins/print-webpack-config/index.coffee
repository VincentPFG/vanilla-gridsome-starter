module.exports = ({configureWebpack}) ->

    configureWebpack (config) ->
        console.log JSON.stringify config, null, '  '
        console.log config
        config