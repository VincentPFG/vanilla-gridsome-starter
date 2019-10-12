import DefaultLayout from '~/layouts/Default.vue'
import vuetify from './vuetify.coffee'
import apolloProvider from './apollo.coffee'
import store from './vuex.coffee'


export default (Vue, {appOptions}) ->
	Vue.component 'Layout', DefaultLayout

	Object.assign appOptions, {
		vuetify
		apolloProvider
		store
	}