#--------------------------------------------------------------------------------
React    = require 'react'
{header} = React.DOM
#--------------------------------------------------------------------------------
require './Splash.styl'
#--------------------------------------------------------------------------------

Splash = React.createClass {

  displayName: 'Splash'

  render: ->

    header {className: 'splash'}

}

module.exports = Splash
