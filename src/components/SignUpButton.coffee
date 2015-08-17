#--------------------------------------------------------------------------------
React      = require 'react/addons'
dom        = require 'util/dom'
mergeProps = require 'util/mergeProps'
Button     = React.createFactory(require 'components/Button')
#--------------------------------------------------------------------------------

SignUpButton = React.createClass {

  displayName: 'SignUpButton'

  render: ->

    props = mergeProps @props, {
      onClick: @scrollToSignup
    }

    Button props,
      "Sign up for free beta"

  scrollToSignup: ->
    el = document.getElementById('signup')
    dom.scrollTo(el, {offset: -250, duration: 500, easing: 'ease'})
    document.getElementById('email').focus()


}

module.exports = SignUpButton
