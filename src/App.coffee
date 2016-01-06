React          = require 'react'
ReactDOM       = require 'react-dom'
ReactDOMServer = require 'react-dom/server'
ReactRouter    = require 'react-router'
History        = require 'history'
Template       = require './Template'
HomePage       = require 'pages/HomePage'
Pricing        = require 'pages/Pricing'
Product        = require 'pages/Product'
Team           = require 'pages/Team'
Router         = React.createFactory(ReactRouter.Router)
Route          = React.createFactory(ReactRouter.Route)
IndexRoute     = React.createFactory(ReactRouter.IndexRoute)
RoutingContext = React.createFactory(ReactRouter.RoutingContext)

routes = [
  Route {path: '/', component: Template},
    Route {path: 'product', component: Product}
    Route {path: 'pricing', component: Pricing}
    Route {path: 'team',    component: Team}
    IndexRoute {component: HomePage}
]

if typeof document isnt 'undefined'
  router = Router {history: History.createHistory(), routes, onUpdate: (-> window.scrollTo(0, 0))}
  ReactDOM.render(router, document)

module.exports = (locals, callback) ->
  history  = History.createMemoryHistory()
  location = history.createLocation(locals.path)
  ReactRouter.match {routes, location}, (err, redirectLocation, renderProps) ->
    html = ReactDOMServer.renderToString(RoutingContext renderProps)
    callback(null, "<!DOCTYPE html>#{html}")