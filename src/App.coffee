React        = require 'react'
Router       = require 'react-router'
Template     = require './Template'
HomePage     = require 'pages/HomePage'
Route        = React.createFactory(Router.Route)
DefaultRoute = React.createFactory(Router.DefaultRoute)

routes = [

  Route {path: '/', handler: Template},
    DefaultRoute {handler: HomePage}

]

if document?
  Router.run routes, Router.HistoryLocation, (handler) ->
    element = React.createElement(handler, {})
    React.render(element, document)

module.exports = (locals, callback) ->
  Router.run routes, locals.path, (handler) ->
    element = React.createElement(handler, locals)
    markup  = React.renderToString(element)
    callback(null, "<!DOCTYPE html>\n#{markup}")
