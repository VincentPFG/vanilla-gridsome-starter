import DefaultLayout from '~/layouts/Default.vue'
import Vuetify from './vuetify.coffee'
import Apollo from './apollo.coffee'


export default (Vue, {appOptions}) ->
	Vue.component 'Layout', DefaultLayout

	Vue.use Vuetify.plugin
	appOptions.vuetify = Vuetify.instance

	Vue.use Apollo.plugin
	appOptions.apolloProvider = Apollo.provider