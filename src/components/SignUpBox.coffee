#--------------------------------------------------------------------------------
_                             = require 'lodash'
jsonp                         = require 'jsonp'
React                         = require 'react/addons'
Button                        = React.createFactory(require 'components/Button')
{button, div, form, input, p, strong} = React.DOM
#--------------------------------------------------------------------------------
require './SignUpBox.styl'
#--------------------------------------------------------------------------------

SignUpBox = React.createClass {

  displayName: 'SignUpBox'

  getInitialState: ->
    {submitted: false, email: undefined}

  render: ->

    if @state.submitted
      content = @renderThanks()
    else
      content = @renderForm()

    div {className: 'signup'},
      p {},
        "TaskTorch is still in private beta testing, but you can sign up to get early access."
      p {},
        "It's "
        strong {}, "completely free "
        "while we're in beta, and will be a low monthly fee per user thereafter."
      content

  renderForm: ->
    form {@onSubmit},
      input {id: 'email', type: 'text', value: @state.email, placeholder: 'Email address', @onChange}
      input {tabIndex: -1, name: 'b_de59a24e2f2ba61890377ae2b_2c42308020', style: {position: 'absolute', left: '-5000px'}}
      button {className: 'button blue', type: 'submit'},
        "Keep me updated"

  renderThanks: ->
    div {className: 'thanks'},
      "Thanks for signing up! We'll be in touch soon."

  onChange: (evt) ->
    @setState {email: evt.target.value}

  onSubmit: (evt) ->
    evt.preventDefault()
    return unless @state.email?.length > 0
    url = "//tasktorch.us9.list-manage.com/subscribe/post-json?u=de59a24e2f2ba61890377ae2b&id=2c42308020&EMAIL=#{encodeURIComponent(@state.email)}"
    jsonp url, {param: 'c'}, (res) =>
      @setState {submitted: true}

}

module.exports = SignUpBox
