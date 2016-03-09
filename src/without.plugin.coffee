cs = require 'coffee-script'
wo = require 'without'

module.exports = (BasePlugin) ->
	# Define Plugin
	BasePlugin.extend
		name: 'without'

		render: (opts) ->
			return unless 'wo'==opts.inExtension

			t = wo new Function cs.compile opts.content, bare: true
			opts.content = t opts.templateData

			return
