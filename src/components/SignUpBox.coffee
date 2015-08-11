#--------------------------------------------------------------------------------
_                = require 'lodash'
React            = require 'react/addons'
Button           = React.createFactory(require 'components/Button')
{div, p, strong} = React.DOM
#--------------------------------------------------------------------------------
require './SignUpBox.styl'
#--------------------------------------------------------------------------------

SignUpBox = React.createClass {

  displayName: 'SignUpBox'

  render: ->

    div {className: 'signup'},
      p {},
        "TaskTorch is "
        strong {}, "free "
        "while we're in beta, and a low monthly fee per user thereafter."
      p {},
        "Give it a try and start working better together."
      Button {color: 'blue'},
        "Create an organization"

}

module.exports = SignUpBox
