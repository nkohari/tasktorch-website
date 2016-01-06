#--------------------------------------------------------------------------------
React       = require 'react'
Router      = require 'react-router'
mergeProps  = require 'util/mergeProps'
{PropTypes} = React
Link        = React.createFactory(Router.Link)
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

    el = if @props.to? then Link else a

    el props,
      @props.children

}

module.exports = Button
