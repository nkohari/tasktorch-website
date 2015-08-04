_ = require 'lodash'

module.exports = classSet = (classes) ->
  _.compact(classes).join(' ')
