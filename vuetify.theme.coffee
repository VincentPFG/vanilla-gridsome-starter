colors = require 'vuetify/es5/util/colors'

main = {}

module.exports =

    theme:
        dark: yes
        themes:
            light: {
                ...main
            }
            dark: {
                ...main
            }
