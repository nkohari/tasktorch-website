#--------------------------------------------------------------------------------
React         = require 'react'
classSet      = require 'util/classSet'
dom           = require 'util/dom'
Button        = React.createFactory(require 'components/Button')
Footer        = React.createFactory(require 'components/Footer')
Navigation    = React.createFactory(require 'components/Navigation')
Video         = React.createFactory(require 'components/Video')
{br, div, h2, h3, main, span, iframe, em} = React.DOM
#--------------------------------------------------------------------------------
require './HomePage.styl'
#--------------------------------------------------------------------------------

HomePage = React.createClass {

  displayName: 'HomePage'

  render: ->

    div {className: 'home-page'},
      Navigation {}
      main {},
        h2 {},
          "Teamwork can be complicated."
          br {}
          em {}, "We can be your guiding light."
        Video {id: 'qv432vvtrp'}
        h3 {},
          "TaskTorch is a new kind of project management system."
          br {}
          "By putting people first, we make it easy to stay organized and work well with others."
        div {className: 'cta'},
          Button {color: 'orange', href: 'https://app.tasktorch.com/signup'}, "Start my free 30-day trial"
          Button {color: 'pink', to: '/product'}, "Take a product tour"
      Footer {}

}

module.exports = HomePage
