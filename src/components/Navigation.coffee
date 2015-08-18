#--------------------------------------------------------------------------------
React                  = require 'react/addons'
dom                    = require 'util/dom'
{a, div, h1, img, nav} = React.DOM
#--------------------------------------------------------------------------------
require './Navigation.styl'
#--------------------------------------------------------------------------------

Navigation = React.createClass {

  displayName: 'Navigation'

  render: ->

    nav {className: 'navigation'},
      div {className: 'left'},
        a {className: 'nav-link', onClick: @scrollToFocus}, 'Our Product'
        a {className: 'nav-link', onClick: @scrollToAboutUs}, 'Who We Are'
      a {className: 'center', onClick: @scrollToTop},
        img {className: 'logo', src: require('images/tasktorch-color.svg')}
        h1 {}, 'TaskTorch'
      div {className: 'right'},
        a {className: 'nav-link', href: 'http://support.tasktorch.com/'}, 'Support'
        a {className: 'nav-link', href: 'https://app.tasktorch.com/x/login'}, 'Log In'

  scrollToTop: ->
    dom.scrollToTop()

  scrollToFocus: ->
    el = document.getElementById('focus')
    dom.scrollTo(el, {offset: -70, duration: 500, easing: 'ease'})

  scrollToAboutUs: ->
    el = document.getElementById('about-us')
    dom.scrollTo(el, {offset: -70, duration: 500, easing: 'ease'})

}

module.exports = Navigation
