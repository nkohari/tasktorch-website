#--------------------------------------------------------------------------------
React            = require 'react/addons'
classSet         = require 'util/classSet'
SignUpButton     = React.createFactory(require 'components/SignUpButton')
Icon             = React.createFactory(require 'components/Icon')
Slide            = React.createFactory(require 'components/Slide')
{PropTypes}      = React
{div, h3, p, em} = React.DOM
#--------------------------------------------------------------------------------
require './QueueSlide.styl'
#--------------------------------------------------------------------------------

QueueSlide = React.createClass {

  displayName: 'QueueSlide'

  statics:
    callout: {type: 'spotlight', x: 200, y: 40, image: require('images/screenshots/queue.jpg')}

  render: ->

    Slide {className: 'queue-slide'},
      div {className: 'text'},
        h3 {},
          "You're in control"
        p {},
          "Tasks are represented by "
          em {}, "cards"
          ", which describe what needs to be done. You have your own list of cards (called a "
          em {}, "queue"
          ") that shows your priorities. Everyone is in charge of their own queue."
        SignUpButton {color: 'orange'}
      div {className: 'graphic'},
        div {className: 'item'},
          Icon {name: 'man',       height: 75, width: 75, color: 'orange'}
          Icon {name: 'checklist', height: 75, width: 75, color: 'orange'}
        div {className: 'item'},
          Icon {name: 'woman',     height: 75, width: 75, color: 'pink'}
          Icon {name: 'checklist', height: 75, width: 75, color: 'pink'}

}

module.exports = QueueSlide
