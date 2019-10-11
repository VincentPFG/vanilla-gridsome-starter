import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import '@mdi/font/css/materialdesignicons.css'
import colors from 'vuetify/lib/util/colors'
import {load} from 'webfontloader'

load
    google:
        families: ['Roboto:100,300,400,500,700,900']

export default
    plugin: Vuetify
    instance: new Vuetify
        theme:
            dark: on
            themes:
                light: {}
                dark: {}