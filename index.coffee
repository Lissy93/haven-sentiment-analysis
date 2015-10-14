request = require 'request'
querystring = require 'querystring'

main = (paramaters, apiKey, callback)->
  host = "https://api.havenondemand.com/1/api/sync/analyzesentiment/v1"
  urlParams = querystring.stringify(paramaters)
  url = host + '?' + urlParams + '&apikey=' + apiKey

  request {
    url: url
    json: true
  }, (error, response, body) ->
    if !error and response.statusCode == 200
      callback(body)

module.exports = main