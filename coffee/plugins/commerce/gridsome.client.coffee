import Commerce from '@chec/commerce.js'

export default (Vue, {apiKey}) ->

    Vue::$commerce = new Commerce apiKey