#--------------------------------------------------------------------------------
React                  = require 'react/addons'
dom                    = require 'util/dom'
Velocity               = require 'velocity-animate' if window?
{a, div, h1, img, nav} = React.DOM
#--------------------------------------------------------------------------------
require './Navigation.styl'
#--------------------------------------------------------------------------------

Navigation = React.createClass {

  displayName: 'Navigation'

  render: ->

    nav {className: 'navigation'},
      div {className: 'left'},
        a {className: 'nav-link', onClick: @scrollToProduct}, 'Our Product'
        a {className: 'nav-link', onClick: @scrollToAboutUs}, 'Who We Are'
      a {className: 'center', onClick: @scrollToTop},
        img {className: 'logo', src: require('images/tasktorch-color.svg')}
        h1 {}, 'TaskTorch'
      div {className: 'right'},
        a {className: 'nav-link', href: '#'}, 'Support'
        a {className: 'nav-link', href: '#'}, 'Log In'

  scrollToTop: ->
    el = document.getElementsByTagName('html')[0]
    Velocity(el, 'scroll', {duration: 500, easing: 'ease'})

  scrollToProduct: ->
    el = document.getElementById('product')
    Velocity(el, 'scroll', {offset: -70, duration: 500, easing: 'ease'})

  scrollToAboutUs: ->
    el = document.getElementById('about-us')
    Velocity(el, 'scroll', {offset: -70, duration: 500, easing: 'ease'})

}

module.exports = Navigation
