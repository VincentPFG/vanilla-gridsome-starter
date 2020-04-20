<template>
	<Layout>
		<div v-html="$page.post.content"></div>
	</Layout>
</template>

<page-query>
query Post($path: String!) {
    post: post(path: $path) {
        title
        content
    }
}
</page-query>

<script>
import '~/assets/markdown.css'

export default {
	metaInfo: {
		title: this.$page.post.title
	}
}
</script>
