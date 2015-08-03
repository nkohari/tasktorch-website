#--------------------------------------------------------------------------------
React = require 'react'
{div} = React.DOM
#--------------------------------------------------------------------------------
require './Splash.styl'
#--------------------------------------------------------------------------------

Splash = React.createClass {

  displayName: 'Splash'

  render: ->

    div {className: 'main'},
      div {className: 'splash'}

}

module.exports = Splash
