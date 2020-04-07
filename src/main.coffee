import DefaultLayout from '~/layouts/Default.vue'

export default (Vue, {}) ->

	Vue.component 'Layout', DefaultLayout

	head.htmlAttrs = lang: 'fr'