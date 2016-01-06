#--------------------------------------------------------------------------------
React             = require 'react'
{PropTypes}       = React
{div, h5, img, p} = React.DOM
#--------------------------------------------------------------------------------
require './Slide.styl'
#--------------------------------------------------------------------------------

Slide = React.createClass {

  displayName: 'Slide'

  propTypes:
    align: PropTypes.string
    color: PropTypes.string
    title: PropTypes.string

  render: ->

    div {className: "slide #{@props.align} #{@props.color}"},
      div {className: 'caption'},
        h5 {}, @props.title
        p {}, @props.children
      img {className: 'screenshot', src: @props.image}

}

module.exports = Slide
