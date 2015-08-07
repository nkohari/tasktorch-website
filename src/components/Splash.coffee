#--------------------------------------------------------------------------------
React                 = require 'react/addons'
Button                = React.createFactory(require 'components/Button')
{div, header, h2, h3} = React.DOM
#--------------------------------------------------------------------------------
require './Splash.styl'
#--------------------------------------------------------------------------------

Splash = React.createClass {

  displayName: 'Splash'

  render: ->

    header {className: 'splash'},
      div {className: 'banner'},
        h2 {},
          "When everyone can focus on their own work,"
        h2 {},
          "we all work better together."
        h3 {},
          "TaskTorch is a social task management app for teams of all kinds."
        h3 {},
          "See how we're rethinking teamwork."
        Button {color: 'pink'},
          "Sign up for free beta access"

}

module.exports = Splash
