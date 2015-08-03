#--------------------------------------------------------------------------------
React  = require 'react'
Splash = React.createFactory(require 'components/Splash')
{main} = React.DOM
#--------------------------------------------------------------------------------
require './HomePage.styl'
#--------------------------------------------------------------------------------

HomePage = React.createClass {

  displayName: 'HomePage'

  render: ->

    main {},
      Splash {}

}

module.exports = HomePage
