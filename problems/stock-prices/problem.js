// You are given an array of stock prices from the previous day
// Each indicie represents the number of minutes passed after 0930 yesterday

//  ex: arr[0] represents the stock price at 0930
//      arr[60] represents the stock price at 1030

// Write a function that calculate the best investment based on and return an object like:
//   {
//     buyTime: XXXX, 
//     sellTime: XXXX,
//     profit: XX
//   }
//  exArr = [9,3,4,5,1,3,5,7,8]
//  investomatic(exArr) => {buyTime: '0935', sellTime: '0939', profit: '7'}
var formatTime = function(startTime, buy, sell){

}

var investomatic = function(stockPrices){
  var maxProfit = 0;
  var bestInvestment = {}
  stockPrices.forEach(function(earlyPrice, earlyTime){
    for(var lateTime = earlyTime + 1; lateTime < stockPrices.length; lateTime++){
      var potentialProfit = stockPrices[lateTime] - earlyPrice
      if(potentialProfit > maxProfit){
        maxProfit = potentialProfit;
        bestInvestment.buyTime = earlyTime
        bestInvestment.sellTime = lateTime
      }
    }
  })
  bestInvestment.profit = maxProfit
  return bestInvestment
}

module.exports = investomatic