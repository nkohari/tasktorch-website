#--------------------------------------------------------------------------------
React        = require 'react/addons'
classSet     = require 'util/classSet'
Button       = React.createFactory(require 'components/Button')
Icon         = React.createFactory(require 'components/Icon')
Slide        = React.createFactory(require 'components/Slide')
{PropTypes}  = React
{div, h3, p} = React.DOM
#--------------------------------------------------------------------------------
require './QueueSlide.styl'
#--------------------------------------------------------------------------------

QueueSlide = React.createClass {

  displayName: 'QueueSlide'

  statics:
    callout: {x: 100, y: 45, image: require('images/screenshots/queue.png')}

  render: ->

    Slide {className: 'queue-slide'},
      div {className: 'graphic'},
        div {className: 'item'},
          Icon {name: 'man',       size: 100, color: 'orange'}
          Icon {name: 'checklist', size: 100, color: 'orange'}
        div {className: 'item'},
          Icon {name: 'woman',     size: 100, color: 'pink'}
          Icon {name: 'checklist', size: 100, color: 'pink'}
      div {className: 'text'},
        h3 {},
          "You're in control"
        p {},
          "Everyone gets their own list of tasks that only they can update. "
          "All you have to do is keep your list up to date, and we take care of the rest."
        Button {color: 'orange'},
          "Sign up for our free beta"

}

module.exports = QueueSlide
