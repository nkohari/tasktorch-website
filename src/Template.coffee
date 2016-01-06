#--------------------------------------------------------------------------------
_            = require 'lodash'
React        = require 'react'
Router       = require 'react-router'
ga           = require 'react-ga'
{PropTypes}  = React
{html, head, meta, title, body, link, script} = React.DOM
#--------------------------------------------------------------------------------
require './Template.styl'
#--------------------------------------------------------------------------------

Template = React.createClass {

  displayName: 'Template'

  propTypes:
    title: PropTypes.string

  componentDidMount: ->
    ga.initialize('UA-57740605-1')
    ga.pageview(@props.location.pathname)

  componentWillReceiveProps: (newProps) ->
    if newProps.location.pathname isnt @props.location.pathname
      ga.pageview(newProps.location.pathname)

  render: ->

    props = _.extend {}, @props

    html {},
      head {},
        meta {charSet: 'UTF-8'}
        meta {name: 'viewport', content: 'width=device-width, initial-scale=1.0'}
        title {}, "TaskTorch: social task management software for team collaboration"
        link {rel: 'shortcut icon', href: '//static.tasktorch.com/favicon.ico'}
        link {rel: 'stylesheet', href: '/static/bundle.css'}
        link {rel: 'stylesheet', href: '//cloud.typography.com/6999932/639968/css/fonts.css'}
      body {},
        @props.children
        script {src: '/static/bundle.js'}
        script {src: '//fast.wistia.com/assets/external/E-v1.js', async: true}

}

module.exports = Template
