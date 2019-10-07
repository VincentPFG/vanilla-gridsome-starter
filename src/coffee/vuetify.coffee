import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import '@mdi/font/css/materialdesignicons.css'
import colors from 'vuetify/lib/util/colors'

export default
    plugin: Vuetify
    instance: new Vuetify
        theme:
            dark: on
            themes:
                light: {}
                dark: {}