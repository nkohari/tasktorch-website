#--------------------------------------------------------------------------------
React                 = require 'react/addons'
SignUpButton          = React.createFactory(require 'components/SignUpButton')
{div, header, h2, h3} = React.DOM
#--------------------------------------------------------------------------------
require './Splash.styl'
#--------------------------------------------------------------------------------

Splash = React.createClass {

  displayName: 'Splash'

  render: ->

    header {id: 'splash', className: 'splash'},
      div {className: 'banner'},
        h2 {},
          "When everyone can focus on their own work,"
        h2 {},
          "we can do great things together."
        h3 {},
          "TaskTorch is a social task management app for teams of all kinds."
        h3 {},
          "See how we're rethinking teamwork."
        SignUpButton {color: 'pink'}

}

module.exports = Splash
