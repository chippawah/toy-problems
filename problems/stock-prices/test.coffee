should = require('chai').should()
solution = require './problem'
testArrarys =
  first: [1,2,3,4,5]
  second: [2,3,5,1,7]

describe 'investomatic', ()->
  describe 'should return', ()->
    it 'an object', (done)->
      solution([1,2]).should.be.a 'object'
      done()
    it 'with keys {buyTime, sellTime, profit}', (done)->
      solution([1,2]).should.have.all.keys 'buyTime', 'sellTime', 'profit'
      done()
  describe 'given arr [1,2,3,4,5]', ()->
    obj = {}
    before (done)->
      obj = solution [1,2,3,4,5]
      done()
    it 'buyTime should be 0930', (done)->
      obj.buyTime.should.equal '0930'
      done()
    it 'sellTime should be 0934', (done)->
      obj.sellTime.should.equal '0934'
      done()
    it 'profit should be 4', (done)->
      obj.profit.should.equal 4
      done()
  describe 'given arr [2,3,5,1,7]', ()->
    obj = {}
    before (done)->
      obj = solution [2,3,5,1,7]
      done()
    it 'buyTime should be 0933', (done)->
      obj.buyTime.should.equal '0930'
      done()
    it 'sellTime should be 0934', (done)->
      obj.sellTime.should.equal '0934'
      done()
    it 'profit should be 6', (done)->
      obj.profit.should.equal 6
      done()
