_ = require 'lodash'

module.exports = mergeClasses = (lists...) ->
  classes = _.uniq _.flatten _.map lists, (classes) ->
    if classes? then classes.split(/\s+/) else []
  return classes.join(' ')
