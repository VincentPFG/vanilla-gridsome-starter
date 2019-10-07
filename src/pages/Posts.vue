<template lang='pug'>
Layout
	v-card(
		v-for='edge in $page.allPost.edges'
		:key='edge.node.title'
		:to='edge.node.path'
	)
		v-card-title {{edge.node.title}}
		v-card-text(v-html='edge.node.content')
</template>

<page-query>
query {
  allPost {
    edges {
      node {
        title
        content
        path
      }
    }
  }
}
</page-query>

<script lang='coffee'>

</script>