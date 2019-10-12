<template lang='pug'>
Layout
    v-btn truc
    h1 un titre
    p un paragraphe
    p {{count}}
</template>

<script lang='coffee'>
import x from 'vuex'

export default
    computed: x.mapState {
            'count'
    }
</script>

<style lang="sass">
@import url('https://fonts.googleapis.com/css?family=Marck+Script&display=swap')

h1
    color: green
    font-family: 'Marck Script'
p
    color: red
</style>