import Vuetify from 'vuetify/lib'
import 'vuetify/dist/vuetify.min.css'
import '@mdi/font/css/materialdesignicons.css'

export default (Vue, options, { head }) => {
	Vue.use(Vuetify)
	head.link.push({
		href:
			'https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900',
		rel: 'stylesheet'
	})
}
