import Commerce from '@chec/commerce.js'

export default (Vue, {apiKey, consoleDebugger}) ->

    Vue::$commerce = new Commerce apiKey, consoleDebugger