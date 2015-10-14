# haven-sentiment-analysis
> Node.js client for HP Haven OnDemand Sentiment Analysis

[![Dependency Status](https://david-dm.org/lissy93/haven-sentiment-analysis.svg)](https://david-dm.org/lissy93/haven-sentiment-analysis)
[![devDependency Status](https://david-dm.org/lissy93/haven-sentiment-analysis/dev-status.svg)](https://david-dm.org/lissy93/haven-sentiment-analysis#info=devDependencies)
[![Code Climate](https://codeclimate.com/github/Lissy93/haven-sentiment-analysis/badges/gpa.svg)](https://codeclimate.com/github/Lissy93/haven-sentiment-analysis)

## Install
```
npm install git://github.com/Lissy93/haven-sentiment-analysis.git
```

## Usage
```javascript
var sentimentAnalysis =  require('haven-sentiment-analysis');
var apiKey = 'XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX';
var string = 'dinosaurs are awesome and I love ice cream';

sentimentAnalysis(string, apiKey, function(results){
    console.log(results); // Do some awesome stuff with sentiment data!
});
```

There is also the option of passing a JSON object rather than a String as the first paramater, in order to specify additional options. See the [Haven OnDemand documentation](https://dev.havenondemand.com/apis/analyzesentiment#request) for full list of paramater options. 


## Example Output
```javascript
{
  "positive": [
    {
      "sentiment": "awesome",
      "topic": "dinosaurs",
      "score": 0.8952832264587852,
      "original_text": "dinosaurs are awesome",
      "original_length": 21,
      "normalized_text": "dinosaurs are awesome",
      "normalized_length": 21
    },
    {
      "sentiment": "love",
      "topic": "icecream",
      "score": 0.8053406931054015,
      "original_text": "I love icecream",
      "original_length": 15,
      "normalized_text": "I love icecream",
      "normalized_length": 15
    }
  ],
  "negative": [],
  "aggregate": {
    "sentiment": "positive",
    "score": 0.8503119597820934
  }
}
```

## Obtaining an API Key
Head over to [HP Haven OnDemand](https://www.havenondemand.com/login.html), log in or sign up and then navigate to the 'My Keys' page. 
API Keys are free for under 50,000 requests monthly. (at the time of writing this)

## Development 
See gulpfile.js for automated build tasks

## License
MIT © [Alicia Sykes](http://aliciasykes.com)

