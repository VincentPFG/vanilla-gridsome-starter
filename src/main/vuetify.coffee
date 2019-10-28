import Vue from 'vue'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import '@mdi/font/css/materialdesignicons.css'
import colors from 'vuetify/lib/util/colors'

Vue.use Vuetify

theme = {}

export default new Vuetify
    theme:
        themes:
            light: {
                ...theme
            }
            dark: {
                ...theme
            }