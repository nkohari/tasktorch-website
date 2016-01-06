#--------------------------------------------------------------------------------
React              = require 'react'
Button             = React.createFactory(require 'components/Button')
{PropTypes}        = React
{div, h3, section} = React.DOM
#--------------------------------------------------------------------------------
require './Section.styl'
#--------------------------------------------------------------------------------

Section = React.createClass {

  displayName: 'Section'

  propTypes:
    color: PropTypes.string
    title: PropTypes.string

  render: ->

    section {className: @props.color},
      h3 {},
        @props.title
      @props.children
      div {className: 'cta'},
        Button {color: 'orange', href: 'https://app.tasktorch.com/x/signup'}, "Start my free 30-day trial"
        Button {color: 'pink', to: '/pricing'}, "What does it cost?"

}

module.exports = Section
