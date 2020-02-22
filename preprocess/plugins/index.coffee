module.exports = (plugins) ->
    for id in plugins
        if (typeof id) is 'string'
            id = use: id
        id.use = '~/plugins/js/' + id.use
        id