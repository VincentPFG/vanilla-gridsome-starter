import Vuex from 'vuex'

export default (Vue, options, {appOptions}) ->

    Vue.use Vuex

    Vue::$x = Vuex

    appOptions.vuex = new Vuex.Store