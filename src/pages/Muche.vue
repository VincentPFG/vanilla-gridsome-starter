<template lang='pug'>
Layout
    v-btn muche

    p personnes : {{personnes}}
</template>

<script lang='coffee'>
import gql from 'graphql-tag'

export default
    apollo:
        personnes: gql """
            {
                personnes {
                    name
                    age
                }
            }
        """
</script>