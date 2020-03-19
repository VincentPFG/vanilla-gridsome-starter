<template lang='pug'>
v-app
	v-navigation-drawer(app v-model='drawer')
		v-list
			v-list-item(v-for='item in nav' :to='item.route' :key='item.name')
				v-list-item-content
					v-list-item-title {{item.name}}
	v-app-bar(app)
		v-app-bar-nav-icon(@click='drawer = !drawer')
		v-toolbar-title {{$static.metadata.siteName}}
		v-spacer
		Dark
	v-content
		v-container
			slot
</template>

<static-query>
{
	metadata {
		siteName
	}
}
</static-query>

<script lang='coffee'>
import Vuetify from 'vuetify/lib'
import colors from 'vuetify/lib/util/colors'
import Dark from '~/components/Dark'

item = (@name, @route) ->

export default

	vuetify: new Vuetify
		theme:
			dark: yes
			themes:
				light: {}
				dark: {}

	components: {Dark}
	
	data: ->
		drawer: null
		nav: []
</script>