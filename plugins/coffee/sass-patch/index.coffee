module.exports = ({configureWebpack}) ->

    configureWebpack (config) ->
        for rule in config.module.rules
            if (String rule.test) is String /\.sass$/
                for one in rule.oneOf
                    for loader in one.use
                        if loader.loader is 'sass-loader'
                            loader.options = sassOptions: indentedSyntax: yes
                # console.log JSON.stringify rule, null, '\t'
        config