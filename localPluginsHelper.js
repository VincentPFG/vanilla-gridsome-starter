module.exports = plugins =>
	plugins.map(item => {
		if (typeof item === 'string') item = { use: item }
		item.use = '~/plugins/' + item.use
		return item
	})
