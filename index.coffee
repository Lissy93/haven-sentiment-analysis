request = require 'request'
querystring = require 'querystring'

main = (paramaters, apiKey, callback)->
  host = "https://api.havenondemand.com/1/api/sync/analyzesentiment/v1"

  if typeof paramaters is 'string'
    urlParams = 'text='+paramaters
  else if typeof paramaters is 'object'
    urlParams = querystring.stringify(paramaters)

  url = host + '?' + urlParams + '&apikey=' + apiKey

  request {
    url: url
    json: true
  }, (error, response, body) ->
    if !error and response.statusCode == 200
      callback(body)

module.exports = main