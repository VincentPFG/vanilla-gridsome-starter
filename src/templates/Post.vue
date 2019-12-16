<template lang='pug'>
Layout
    div(v-html='$page.post.content')
</template>

<page-query>
query Post($path: String!) {
    post: post(path: $path) {
        title
        content
    }
}
</page-query>

<script lang='coffee'>
import '~/assets/markdown.css'

export default
    metaInfo: ->
        title: @$page.post.title
</script>