module.exports = (plugins) -> for item in plugins
    item = use: item if (typeof item) is 'string'  
    item.use = '~/plugins/' + item.use
    item