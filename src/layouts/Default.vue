<template lang='pug'>
v-app
	v-navigation-drawer(app v-model='drawer')
		v-list
			v-list-item(v-for='item in nav' :to='item.route' :key='item.name')
				v-list-item-content
					v-list-item-title {{item.name}}
	v-app-bar(app)
		v-app-bar-nav-icon(@click='drawer = !drawer')
		v-toolbar-title#title Le Titre
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
		nav: [
			new item 'Home', '/'
			new item 'Truc', '/truc'
			new item 'Muche', '/muche'
			new item 'Posts', '/posts'
			new item 'GQL', '/___explore'
		]
</script>

<style lang='sass'>
@import url('https://fonts.googleapis.com/css?family=Charm|Marck+Script&display=swap')

#title
	font-family: Charm, 'Marck Script'
	font-size: x-large
</style>