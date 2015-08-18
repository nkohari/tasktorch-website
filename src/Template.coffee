#--------------------------------------------------------------------------------
_            = require 'lodash'
React        = require 'react/addons'
Router       = require 'react-router'
RouteHandler = React.createFactory(Router.RouteHandler)
{PropTypes}  = React
{html, head, meta, title, body, link, script} = React.DOM
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
        meta {charSet: 'UTF-8'}
        meta {name: 'viewport', content: 'width=device-width, initial-scale=1.0'}
        title {}, "TaskTorch: Social task management for teams of all kinds"
        link {rel: 'shortcut icon', href: '//static.tasktorch.com/favicon.ico'}
        link {rel: 'stylesheet', href: 'bundle.css'}
        link {rel: 'stylesheet', href: '//cloud.typography.com/6999932/639968/css/fonts.css'}
      RouteHandler props
      script {src: 'bundle.js'}

}

module.exports = Template
