import ApolloClient from 'apollo-boost'
import VueApollo from 'vue-apollo'

export default
	plugin: VueApollo
	provider: new VueApollo
		defaultClient: new ApolloClient
			uri: 'http://localhost:1337/graphql'