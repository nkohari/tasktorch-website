#--------------------------------------------------------------------------------
React        = require 'react/addons'
classSet     = require 'util/classSet'
dom          = require 'util/dom'
AboutUs      = React.createFactory(require 'components/AboutUs')
Footer       = React.createFactory(require 'components/Footer')
Navigation   = React.createFactory(require 'components/Navigation')
Section      = React.createFactory(require 'components/Section')
Slideshow    = React.createFactory(require 'components/Slideshow')
Splash       = React.createFactory(require 'components/Splash')
QueueSlide   = React.createFactory(require 'slides/QueueSlide')
PassSlide    = React.createFactory(require 'slides/PassSlide')
ActionsSlide = React.createFactory(require 'slides/ActionsSlide')
TeamSlide    = React.createFactory(require 'slides/TeamSlide')
{body, div, header, main} = React.DOM
#--------------------------------------------------------------------------------
require './HomePage.styl'
#--------------------------------------------------------------------------------

HomePage = React.createClass {

  displayName: 'HomePage'

  getInitialState: ->
    {scrollMark: undefined}

  componentDidMount: ->
    window.addEventListener('scroll', @handleScroll)

  componentWillUnmount: ->
    window.removeEventListener('scroll', @handleScroll)

  render: ->

    classes = classSet [
      'home-page'
      "scroll-mark-#{@state.scrollMark}" if @state.scrollMark?
    ]

    body {className: classes},
      Navigation {}
      Splash {}
      main {},
        Section {color: 'blue'},
          Slideshow {name: 'focus', title: "Stay focused on what's relevant to you."},
            PassSlide {}
            QueueSlide {}
            ActionsSlide {}
        Section {color: 'pink'},
          Slideshow {name: 'bigpicture', title: "Step back and see the big picture."},
            TeamSlide {}
        Section {color: 'orange'},
          AboutUs {}
      Footer {}

  handleScroll: ->
    pct = (document.body.scrollTop / dom.getViewportHeight()) * 100
    if pct < 20
      scrollMark = undefined
    else if pct < 50
      scrollMark = 'one'
    else
      scrollMark = 'two'
    @setState {scrollMark} unless scrollMark == @state.scrollMark

}

module.exports = HomePage
