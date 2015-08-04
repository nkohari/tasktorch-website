#--------------------------------------------------------------------------------
React      = require 'react'
Navigation = React.createFactory(require 'components/Navigation')
Section    = React.createFactory(require 'components/Section')
Slideshow  = React.createFactory(require 'components/Slideshow')
Splash     = React.createFactory(require 'components/Splash')
{body, div, header, main} = React.DOM
#--------------------------------------------------------------------------------
require './HomePage.styl'
#--------------------------------------------------------------------------------

HomePage = React.createClass {

  displayName: 'HomePage'

  getInitialState: ->
    {scrolled: false}

  componentDidMount: ->
    window.addEventListener('scroll', @handleScroll)

  componentWillUnmount: ->
    window.removeEventListener('scroll', @handleScroll)

  render: ->

    body {className: 'home-page'},
      Navigation {pinned: @state.scrolled}
      Splash {}
      main {},
        Section {color: 'blue'},
          Slideshow {name: 'focus', title: "Stay focused on what's relevant to you."},
            div {}, 'test'
        Section {color: 'pink'},
          Slideshow {name: 'bigpicture', title: "Step back and see the big picture."},
            div {}, 'test'

  handleScroll: ->
    @setState {scrolled: document.body.scrollTop > 500}

}

module.exports = HomePage
