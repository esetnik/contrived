fs = require 'fs'
require 'js-yaml'

contrives = {}

(->
	rootPath = process.cwd()+'/contrives/'
	files = fs.readdirSync rootPath
	for file in files
		try
			model = file.split('.')[0]
			filePath = rootPath + file
			contrives[model] = require filePath
		catch e
			throw e
)()

module.exports = contrives