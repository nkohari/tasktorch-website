#--------------------------------------------------------------------------------
_            = require 'lodash'
React        = require 'react'
Router       = require 'react-router'
RouteHandler = React.createFactory(Router.RouteHandler)
{PropTypes}  = React
{html, head, title, body, link} = React.DOM
#--------------------------------------------------------------------------------
require './Template.styl'
#--------------------------------------------------------------------------------

Template = React.createClass {

  displayName: 'Template'

  propTypes:
    title: PropTypes.string

  render: ->

    props = _.extend {}, @props

    html {},
      head {},
        title {}, @props.title
        link {rel: 'stylesheet', href: 'bundle.css'}
        link {rel: 'stylesheet', href: '//cloud.typography.com/6999932/639968/css/fonts.css'}
      body {},
        RouteHandler props

}

module.exports = Template
