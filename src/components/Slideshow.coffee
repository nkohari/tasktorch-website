#--------------------------------------------------------------------------------
React                  = require 'react'
{a, div, h1, img, nav} = React.DOM
#--------------------------------------------------------------------------------
require './Slideshow.styl'
#--------------------------------------------------------------------------------

Slideshow = React.createClass {

  displayName: 'Slideshow'

  render: ->

    div {className: 'slideshow'}


}

module.exports = Slideshow
