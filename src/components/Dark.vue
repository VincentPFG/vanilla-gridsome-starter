<template lang='pug'>
	v-btn(icon @click='turnDark')
		v-icon mdi-theme-light-dark
</template>

<script lang='coffee'>
export default
	mounted: ->
		if localStorage.dark?
			@$vuetify.theme.dark = JSON.parse localStorage.dark
            
	methods:
		turnDark: ->
			@$vuetify.theme.dark = not @$vuetify.theme.dark
			localStorage.dark = @$vuetify.theme.dark
</script>