#--------------------------------------------------------------------------------
React            = require 'react/addons'
classSet         = require 'util/classSet'
strings          = require 'util/strings'
Button           = React.createFactory(require 'components/Button')
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
    callout: {type: 'spotlight', x: 100, y: 40, image: require('images/screenshots/queue.png')}

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
        Button {color: 'orange'},
          strings.CallToAction
      div {className: 'graphic'},
        div {className: 'item'},
          Icon {name: 'man',       height: 80, width: 80, color: 'orange'}
          Icon {name: 'checklist', height: 80, width: 80, color: 'orange'}
        div {className: 'item'},
          Icon {name: 'woman',     height: 80, width: 80, color: 'pink'}
          Icon {name: 'checklist', height: 80, width: 80, color: 'pink'}

}

module.exports = QueueSlide
