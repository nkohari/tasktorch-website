#--------------------------------------------------------------------------------
React       = require 'react'
{PropTypes} = React
{div}       = React.DOM
#--------------------------------------------------------------------------------
require './Section.styl'
#--------------------------------------------------------------------------------

Section = React.createClass {

  displayName: 'Section'

  propTypes:
    color: PropTypes.string

  render: ->

    div {className: "section #{@props.color}"},
      @props.children

}

module.exports = Section
