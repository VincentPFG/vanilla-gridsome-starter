<template lang='pug'>
v-btn(icon @click='toggle')
	v-icon mdi-theme-light-dark
</template>

<script lang='coffee'>
export default
	mounted: ->
		@$vuetify.theme.dark = if localStorage.dark?
			JSON.parse localStorage.dark
		else (matchMedia '(prefers-color-scheme: dark)').matches
            
	methods:
		toggle: ->
			@$vuetify.theme.dark = not @$vuetify.theme.dark
			localStorage.dark = @$vuetify.theme.dark
</script>