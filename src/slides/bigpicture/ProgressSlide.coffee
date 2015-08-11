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
require './ProgressSlide.styl'
#--------------------------------------------------------------------------------

ProgressSlide = React.createClass {

  displayName: 'ProgressSlide'

  statics:
    callout: {type: 'wide', x: 280, y: 60, image: require('images/screenshots/team.jpg')}

  render: ->

    Slide {className: 'progress-slide'},
      div {className: 'text'},
        h3 {},
          "Automatically follow progress"
        p {},
          "The progress view is automatically generated from the actions on each card, "
          "so you don't need to remember to update the board."
        Button {color: 'orange'},
          strings.CallToAction
      div {className: 'graphic'},
        Icon {name: 'progress', height: 80, width: 144, color: 'orange'}
        Icon {name: 'progress', height: 80, width: 144, color: 'pink'}

}

module.exports = ProgressSlide
