module.exports = ({ configureWebpack }) =>
	configureWebpack(config => {
		for ({ test, oneOf } of config.module.rules) {
			if (String(test) === String(/\.sass$/)) {
				for ({ use } of oneOf) {
					for (used of use) {
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
