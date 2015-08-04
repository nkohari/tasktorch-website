_            = require 'lodash'
mergeClasses = require './mergeClasses'

module.exports = mergeProps = (propLists...) ->
  mergedProps = {}
  for props in propLists
    if props.className?
      mergedProps.className = mergeClasses(mergedProps.className, props.className)
    mergedProps = _.extend mergedProps, _.omit(props, 'className')
  return mergedProps
