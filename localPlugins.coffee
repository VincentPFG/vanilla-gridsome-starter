module.exports = (plugins) -> for id in plugins
    id = use: id if (typeof id) is 'string'  
    id.use = '~/plugins/' + id.use
    id