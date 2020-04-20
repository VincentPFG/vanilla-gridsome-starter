import DefaultLayout from '~/layouts/Default.vue'

export default (Vue, { head }) => {
	Vue.component('Layout', DefaultLayout)
	head.htmlAttrs = {
		lang: 'fr'
	}
}
