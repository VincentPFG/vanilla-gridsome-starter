<template lang='pug'>
Layout
    v-btn muche

    v-simple-table
        template(#default)
            thead
                th id
                th name
                th age
            tbody
                tr(v-for='personne in personnes')
                    td {{personne.id}}
                    td {{personne.name}}
                    td {{personne.age}}
</template>

<script lang='coffee'>
import gql from 'graphql-tag'

export default
    apollo:
        personnes: gql """
            {
                personnes {
                    id
                    name
                    age
                }
            }
        """
</script>