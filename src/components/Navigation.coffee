#--------------------------------------------------------------------------------
React                  = require 'react'
Router                 = require 'react-router'
dom                    = require 'util/dom'
classSet               = require 'util/classSet'
{PropTypes}            = React
Link                   = React.createFactory(Router.Link)
{a, div, h1, img, nav} = React.DOM
#--------------------------------------------------------------------------------
require './Navigation.styl'
#--------------------------------------------------------------------------------

Navigation = React.createClass {

  displayName: 'Navigation'

  propTypes:
    sticky: PropTypes.bool

  getInitialState: ->
    {stuck: false}

  componentDidMount: ->
    window.addEventListener('scroll', @handleScroll) if @props.sticky

  componentWillUnmount: ->
    window.removeEventListener('scroll', @handleScroll) if @props.sticky

  render: ->

    classes = classSet [
      'navigation'
      'stuck' if @state.stuck
      'sticky' if @props.sticky
    ]

    nav {className: classes},
      div {className: 'left'},
        Link {className: 'pink', to: '/product'}, 'Product'
        Link {className: 'orange', to: '/pricing'}, 'Pricing'
        a {className: 'blue', href: 'http://support.tasktorch.com/'}, 'Support'
      div {className: 'center'},
        Link {to: '/'},
          img {className: 'logo', src: require('images/tasktorch-color.svg')}
          h1 {}, 'TaskTorch'
      div {className: 'right'},
        a {className: 'pink', href: 'https://app.tasktorch.com/login'}, 'Log In'
        a {className: 'cta', href: 'https://app.tasktorch.com/signup'}, 'Create an Account'

  handleScroll: ->
    pct = (dom.getScrollPosition() / dom.getViewportHeight()) * 100
    @setState {stuck: pct > 5}

}

module.exports = Navigation
