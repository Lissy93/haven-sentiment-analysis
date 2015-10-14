(function() {
  var main, querystring, request;

  request = require('request');

  querystring = require('querystring');

  main = function(paramaters, apiKey, callback) {
    var host, url, urlParams;
    host = "https://api.havenondemand.com/1/api/sync/analyzesentiment/v1";
    urlParams = querystring.stringify(paramaters);
    url = host + '?' + urlParams + '&apikey=' + apiKey;
    return request({
      url: url,
      json: true
    }, function(error, response, body) {
      if (!error && response.statusCode === 200) {
        return callback(body);
      }
    });
  };

  module.exports = main;

}).call(this);
/* (C) Alicia Sykes <alicia@aliciasykes.com> 2015           *\
\* MIT License. Read full license at: https://goo.gl/IL4lQJ */