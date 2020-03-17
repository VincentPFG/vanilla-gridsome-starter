import backendless from 'backendless'

export default (Vue, {apiId, apiKey}) ->

    backendless.initApp apiId, apiKey

    Vue::$backendless = backendless