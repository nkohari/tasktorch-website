#--------------------------------------------------------------------------------
React            = require 'react/addons'
classSet         = require 'util/classSet'
ShowMoreButton   = React.createFactory(require 'components/ShowMoreButton')
SignUpButton     = React.createFactory(require 'components/SignUpButton')
Icon             = React.createFactory(require 'components/Icon')
Slide            = React.createFactory(require 'components/Slide')
{PropTypes}      = React
{div, h3, p, em} = React.DOM
#--------------------------------------------------------------------------------
require './KindSlide.styl'
#--------------------------------------------------------------------------------

KindSlide = React.createClass {

  displayName: 'KindSlide'

  statics:
    callout: {type: 'spotlight', x: 80, y: 40, image: require('images/screenshots/kinds.jpg')}

  render: ->

    Slide {className: 'kind-slide'},
      div {className: 'text'},
        h3 {},
          "No more project silos"
        p {},
          "Your queue can contain different "
          em {}, "kinds"
          " of cards, so you don't need to search through several \"projects\" to figure out what "
          "to work on. You just have one list of all of your priorities."
        SignUpButton {color: 'pink'}
        ShowMoreButton {color: 'orange'}
      div {className: 'graphic'},
        Icon {name: 'stack', height: 90, width: 99, colors: ['orange', 'pink', 'blue']}
        Icon {name: 'stack', height: 90, width: 99, colors: ['pink', 'orange', 'blue']}

}

module.exports = KindSlide
