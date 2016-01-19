gulp = require 'gulp'
mocha = require 'gulp-mocha'
{log, colors} = require 'gulp-util'
toyProblem = './problems/stock-prices/'

gulp.task 'default', ['watch']

gulp.task 'test', ()->
  pathToTest = "#{toyProblem}test.coffee"
  gulp.src pathToTest
    .pipe mocha()
      .on 'error', (e)->
        log "Error while testing #{colors.yellow pathToTest}"
        log e.message
        @emit 'end'

gulp.task 'watch', ['test'], ()->
  gulp.watch "#{toyProblem}**/*.*", ['test'] 