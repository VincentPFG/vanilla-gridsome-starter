<template>
	<v-app>
		<v-navigation-drawer app="app" v-model="drawer">
			<v-list>
				<v-list-item
					v-for="item in nav"
					:to="item.route"
					:key="item.name"
				>
					<v-list-item-content>
						<v-list-item-title>{{ item.name }}</v-list-item-title>
					</v-list-item-content>
				</v-list-item>
			</v-list>
		</v-navigation-drawer>
		<v-app-bar app="app">
			<v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>
			<v-toolbar-title>{{ $static.metadata.siteName }}</v-toolbar-title>
			<v-spacer></v-spacer>
			<Dark></Dark>
		</v-app-bar>
		<v-content>
			<v-container>
				<slot></slot>
			</v-container>
		</v-content>
	</v-app>
</template>

<static-query>
{
	metadata {
		siteName
	}
}
</static-query>

<script>
import Vuetify from 'vuetify/lib'
import colors from 'vuetify/lib/util/colors'
import Dark from '~/components/Dark'

export default {
	vuetify: new Vuetify({
		theme: {
			dark: true,
			themes: {
				light: {},
				dark: {}
			}
		}
	}),
	components: { Dark },
	data() {
		return {
			drawer: null,
			nav: []
		}
	}
}
</script>