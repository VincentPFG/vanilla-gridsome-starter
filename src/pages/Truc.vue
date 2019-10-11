<template lang='pug'>
Layout
    v-btn truc
    h1 un titre
    p un paragraphe
</template>

<script lang='coffee'>
export default
    data: ->
        un: 'test'
    mounted: ->
        console.log @options
</script>

<style lang="sass">
@import url('https://fonts.googleapis.com/css?family=Marck+Script&display=swap')

h1
    color: green
    font-family: 'Marck Script'
p
    color: red
</style>