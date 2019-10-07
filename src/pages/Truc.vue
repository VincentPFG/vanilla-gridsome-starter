<template lang='pug'>
Layout
    v-btn truc
</template>

<script lang='coffee'>
export default
    data: ->
        un: 'test'
    mounted: ->
        console.log @options
</script>