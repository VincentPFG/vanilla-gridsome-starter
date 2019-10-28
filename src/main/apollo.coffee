import Vue from 'vue'
import VueApollo from 'vue-apollo'
import ApolloClient from 'apollo-boost'
import 'isomorphic-fetch' # SSR patch

Vue.use VueApollo

export default new VueApollo
	defaultClient: new ApolloClient
		uri: ''