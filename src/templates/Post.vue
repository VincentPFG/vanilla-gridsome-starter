<template lang='pug'>
Layout
    //- div(v-html='$page.post.content')
</template>

<page-query>
# query Post ($path: String!) {
#   post: post (path: $path) {
#     title
#     content
#   }
# }
</page-query>

<script lang='coffee'>
export default
    metaInfo: ->
        # title: @$page.post.title
</script>