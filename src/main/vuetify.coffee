import Vue from 'vue'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import '@mdi/font/css/materialdesignicons.css'
import colors from 'vuetify/lib/util/colors'
# import {load} from 'webfontloader'

Vue.use Vuetify

theme = {}

export default new Vuetify
    theme:
        dark: on
        themes:
            light: {
                ...theme
            }
            dark: {
                ...theme
            }

if window? # patch
    {load} = require 'webfontloader'
    load
        google:
            families: ['Roboto:100,300,400,500,700,900']