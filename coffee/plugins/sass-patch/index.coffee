module.exports = ({configureWebpack}) ->

    configureWebpack (config) ->
        for {test, oneOf} in config.module.rules
            if (String test) is String /\.sass$/
                for {use} in oneOf
                    for used in use
                        if used.loader is 'sass-loader'
                            used.options = sassOptions: indentedSyntax: yes
        config