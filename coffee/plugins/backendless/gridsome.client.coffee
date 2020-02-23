import backendless from 'backendless'

export default (Vue, options) ->

    backendless.initApp options.apiId, options.apiKey

    Vue::$bl = backendless