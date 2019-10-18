<template lang='pug'>
v-app
	v-navigation-drawer(app v-model='drawer')
		v-list
			v-list-item(v-for='item in nav' :to='item.route' :key='item.name')
				v-list-item-content
					v-list-item-title {{item.name}}
	v-app-bar(app)
		v-app-bar-nav-icon(@click='drawer = !drawer')
		v-toolbar-title Le Titre
		v-spacer
		Dark
	v-content
		v-container
			slot
</template>

<script lang='coffee'>
import Dark from '~/components/Dark'

item = (@name, @route) ->

export default
	components: {Dark}
	
	data: ->
		drawer: null
		nav: []
</script>