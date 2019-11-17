import VueApollo from 'vue-apollo'
import ApolloClient from 'apollo-boost'
import 'isomorphic-fetch' # SSR patch

export default (Vue, options, {appOptions}) ->

    Vue.use VueApollo

    appOptions.apolloProvider = new VueApollo
        defaultClient: new ApolloClient
            uri: ''