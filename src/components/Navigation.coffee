#--------------------------------------------------------------------------------
React                  = require 'react/addons'
{a, div, h1, img, nav} = React.DOM
#--------------------------------------------------------------------------------
require './Navigation.styl'
#--------------------------------------------------------------------------------

Navigation = React.createClass {

  displayName: 'Navigation'

  render: ->

    nav {className: 'navigation'},
      div {className: 'left'},
        a {href: '#'}, 'Our Product'
        a {href: '#'}, 'Who We Are'
      div {className: 'center'},
        img {className: 'logo', src: require('images/tasktorch-color.svg')}
        h1 {}, 'TaskTorch'
      div {className: 'right'},
        a {href: '#'}, 'Support'
        a {href: '#'}, 'Log In'

}

module.exports = Navigation
