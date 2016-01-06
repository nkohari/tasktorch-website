#--------------------------------------------------------------------------------
React             = require 'react'
{PropTypes}       = React
{div, h4, img, p} = React.DOM
#--------------------------------------------------------------------------------
require './Point.styl'
#--------------------------------------------------------------------------------

Point = React.createClass {

  displayName: 'Point'

  propTypes:
    align:  PropTypes.string
    title:  PropTypes.string
    figure: PropTypes.string

  getDefaultProps: ->
    {align: 'left'}

  render: ->

    div {className: "point #{@props.align}"},
      img {className: 'figure', src: @props.figure}
      div {className: 'content'},
        h4 {}, @props.title
        p {}, @props.children

}

module.exports = Point
