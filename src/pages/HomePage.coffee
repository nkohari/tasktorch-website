#--------------------------------------------------------------------------------
React      = require 'react'
Navigation = React.createFactory(require 'components/Navigation')
Section    = React.createFactory(require 'components/Section')
Slideshow  = React.createFactory(require 'components/Slideshow')
Splash     = React.createFactory(require 'components/Splash')
{body, header, main} = React.DOM
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
          Slideshow {}

  handleScroll: ->
    @setState {scrolled: document.body.scrollTop > 500}

}

module.exports = HomePage
