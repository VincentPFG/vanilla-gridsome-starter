module.exports = ({ configureWebpack }) =>
	configureWebpack(config => {
		for (let { test, oneOf } of config.module.rules) {
			if (String(test) === String(/\.sass$/)) {
				for (let { use } of oneOf) {
					for (let used of use) {
						if (used.loader === 'sass-loader')
							used.options = {
								sassOptions: { indentedSyntax: true }
							}
					}
				}
			}
		}
		return config
	})
