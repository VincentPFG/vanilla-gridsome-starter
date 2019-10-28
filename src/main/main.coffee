import DefaultLayout from '~/layouts/Default.vue'
import vuetify from './vuetify.coffee'
import apolloProvider from './apollo.coffee'
import store from './vuex.coffee'


export default (Vue, {appOptions, head}) ->
	Vue.component 'Layout', DefaultLayout

	Object.assign appOptions, {
		vuetify
		apolloProvider
		store
	}

	head.link.push
		href: 'https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900'
		rel: 'stylesheet'