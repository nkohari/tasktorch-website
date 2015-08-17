#--------------------------------------------------------------------------------
React            = require 'react/addons'
classSet         = require 'util/classSet'
SignUpButton     = React.createFactory(require 'components/SignUpButton')
Icon             = React.createFactory(require 'components/Icon')
Slide            = React.createFactory(require 'components/Slide')
{PropTypes}      = React
{div, h3, p, em} = React.DOM
#--------------------------------------------------------------------------------
require './GoalSlide.styl'
#--------------------------------------------------------------------------------

GoalSlide = React.createClass {

  displayName: 'GoalSlide'

  statics:
    callout: {type: 'wide', x: 80, y: 60, image: require('images/screenshots/goal.jpg')}

  render: ->

    Slide {className: 'goal-slide'},
      div {className: 'text'},
        h3 {},
          "Get everyone sprinting in the same direction"
        p {},
          "By adding cards to "
          em {}, "goals"
          ", you can see how close you are to finishing, no matter who is involved. "
          "Everyone can see the target, and can do their part to get the company there."
        SignUpButton {color: 'orange'}
      div {className: 'graphic'},
        Icon {name: 'goal', height: 90, width: 90, color: 'pink'}
        Icon {name: 'plan', height: 90, width: 90, color: 'orange'}

}

module.exports = GoalSlide
