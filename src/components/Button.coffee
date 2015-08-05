#--------------------------------------------------------------------------------
React       = require 'react/addons'
mergeProps  = require 'util/mergeProps'
{PropTypes} = React
{a}         = React.DOM
#--------------------------------------------------------------------------------
require './Button.styl'
#--------------------------------------------------------------------------------

Button = React.createClass {

  displayName: 'Button'

  propTypes:
    color: PropTypes.string

  render: ->

    props = mergeProps @props, {
      className: "button #{@props.color}"
    }

    a props,
      @props.children

}

module.exports = Button
