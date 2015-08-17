#--------------------------------------------------------------------------------
_                             = require 'lodash'
React                         = require 'react/addons'
Button                        = React.createFactory(require 'components/Button')
{div, form, input, p, strong} = React.DOM
#--------------------------------------------------------------------------------
require './SignUpBox.styl'
#--------------------------------------------------------------------------------

SignUpBox = React.createClass {

  displayName: 'SignUpBox'

  render: ->

    div {className: 'signup'},
      p {},
        "TaskTorch is still in private beta testing, but you can sign up to get early access."
      p {},
        "It's "
        strong {}, "completely free "
        "while we're in beta, and will be a low monthly fee per user thereafter."
      form {},
        input {id: 'email', type: 'text', placeholder: 'Email address'}
        Button {type: 'submit', color: 'blue'},
          "Keep me updated"

}

module.exports = SignUpBox
