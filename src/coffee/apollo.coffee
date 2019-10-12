import Vue from 'vue'
import VueApollo from 'vue-apollo'
import ApolloClient from 'apollo-boost'

Vue.use VueApollo

export default new VueApollo
	defaultClient: new ApolloClient
		uri: 'http://localhost:1337/graphql'