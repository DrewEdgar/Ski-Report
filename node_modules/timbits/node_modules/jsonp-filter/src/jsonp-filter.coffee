url = require 'url'
out = (require 'styout').instance 'jsonp-filter'

out.verbosity = out.WARN_VERBOSITY

exports.setupJSONP = ->
	checkJSON = (requrl) ->
		uri = url.parse(requrl)
		return /json=true/i.test(if uri.query? then uri.query else '')

	return (req, res, next) ->
		isJSON = checkJSON req.url
		json = ''

		if isJSON
			# res.write filter/hook to concatenate json
			write = res.write
			res.write = (chunk, encoding) ->
				res.write = write
				out.debug 'res.write json'
				json += chunk.toString(if encoding? then encoding else 'utf8')

			# res.end filter/hook
			end = res.end
			res.end = (data, encoding) ->
				res.end = end
				out.debug 'res.end json'
				res.removeHeader 'content-length' # content-length needs to be recalculated for stringify and callback padding
				res.json json

		next() # pass through to the next layer