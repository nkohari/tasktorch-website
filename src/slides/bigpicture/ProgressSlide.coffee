#--------------------------------------------------------------------------------
React            = require 'react/addons'
classSet         = require 'util/classSet'
SignUpButton     = React.createFactory(require 'components/SignUpButton')
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
    callout: {type: 'wide', x: 80, y: 60, image: require('images/screenshots/progress.jpg')}

  render: ->

    Slide {className: 'progress-slide'},
      div {className: 'text'},
        h3 {},
          "Automatically follow progress"
        p {},
          "It's easy to follow the progress of cards. Even better, the view is generated "
          "automatically as people finish work, so you always have an up-to-date "
          "picture of what's happening."
        SignUpButton {color: 'pink'}
      div {className: 'graphic'},
        Icon {name: 'progress', height: 70, width: 126, color: 'orange'}
        Icon {name: 'progress', height: 70, width: 126, color: 'pink'}

}

module.exports = ProgressSlide
