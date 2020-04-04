module.exports = ({configureWebpack}) ->

    configureWebpack
        module: rules: [
            test: /\.coffee$/
            use: 'coffee-loader'
        ]
        resolve: extensions: ['.coffee']