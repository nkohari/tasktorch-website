#--------------------------------------------------------------------------------
React         = require 'react/addons'
classSet      = require 'util/classSet'
dom           = require 'util/dom'
AboutUs       = React.createFactory(require 'components/AboutUs')
Footer        = React.createFactory(require 'components/Footer')
Navigation    = React.createFactory(require 'components/Navigation')
Section       = React.createFactory(require 'components/Section')
SignUpBox     = React.createFactory(require 'components/SignUpBox')
Slideshow     = React.createFactory(require 'components/Slideshow')
Splash        = React.createFactory(require 'components/Splash')
QueueSlide    = React.createFactory(require 'slides/focus/QueueSlide')
PassSlide     = React.createFactory(require 'slides/focus/PassSlide')
ActionSlide   = React.createFactory(require 'slides/focus/ActionSlide')
KindSlide     = React.createFactory(require 'slides/focus/KindSlide')
TeamSlide     = React.createFactory(require 'slides/bigpicture/TeamSlide')
GoalSlide     = React.createFactory(require 'slides/bigpicture/GoalSlide')
ProgressSlide = React.createFactory(require 'slides/bigpicture/ProgressSlide')
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
      Splash {}
      Navigation {}
      main {},
        Section {id: 'focus', color: 'orange'},
          Slideshow {name: 'focus', title: "Stay focused on what's relevant to you."},
            QueueSlide {}
            PassSlide {}
            KindSlide {}
            ActionSlide {}
        Section {id: 'bigpicture', color: 'pink'},
          Slideshow {name: 'bigpicture', title: "Then step back and see the big picture."},
            TeamSlide {}
            GoalSlide {}
            ProgressSlide {}
        Section {id: 'signup', color: 'blue'},
          SignUpBox {}
        Section {id: 'about-us', color: 'blue'},
          AboutUs {}
      Footer {}

  handleScroll: ->
    pct = (dom.getScrollPosition() / dom.getViewportHeight()) * 100
    if pct < 20
      scrollMark = undefined
    else if pct < 50
      scrollMark = 'one'
    else
      scrollMark = 'two'
    @setState {scrollMark} unless scrollMark == @state.scrollMark

}

module.exports = HomePage
