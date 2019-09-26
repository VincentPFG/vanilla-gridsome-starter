import Vuetify from 'vuetify'
import options from './vuetify.coffee'

import DefaultLayout from '~/layouts/Default.vue'


export default (Vue, { appOptions, head }) ->
	Vue.use Vuetify

	appOptions.vuetify = new Vuetify options
	
	Vue.component 'Layout', DefaultLayout