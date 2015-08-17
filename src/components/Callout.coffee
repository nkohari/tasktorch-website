#--------------------------------------------------------------------------------
_           = require 'lodash'
React       = require 'react/addons'
mergeProps  = require 'util/mergeProps'
{PropTypes} = React
{div}       = React.DOM
#--------------------------------------------------------------------------------
require './Callout.styl'
#--------------------------------------------------------------------------------

Callout = React.createClass {

  displayName: 'Callout'

  propTypes:
    image: PropTypes.string
    type:  PropTypes.string
    x:     PropTypes.number
    y:     PropTypes.number

  render: ->

    props = mergeProps _.omit(@props, 'image', 'type', 'x', 'y'), {
      className: "callout #{@props.type}"
      style:
        backgroundImage: "url(#{@props.image})"
        top:  @props.y
        left: @props.x
    }

    div props

}

module.exports = Callout
