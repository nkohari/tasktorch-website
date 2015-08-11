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
require './GoalSlide.styl'
#--------------------------------------------------------------------------------

GoalSlide = React.createClass {

  displayName: 'GoalSlide'

  statics:
    callout: {type: 'wide', x: 190, y: 60, image: require('images/screenshots/team.jpg')}

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
        Button {color: 'orange'},
          strings.CallToAction
      div {className: 'graphic'},
        Icon {name: 'plan', height: 90, width: 90, color: 'orange'}
        Icon {name: 'goal', height: 90, width: 90, color: 'pink'}

}

module.exports = GoalSlide
