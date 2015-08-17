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
require './ActionSlide.styl'
#--------------------------------------------------------------------------------

ActionSlide = React.createClass {

  displayName: 'ActionSlide'

  statics:
    callout: {type: 'spotlight', x: 440, y: 40, image: require('images/screenshots/actions.jpg')}

  render: ->

    Slide {className: 'action-slide'},
      div {className: 'text'},
        h3 {},
          "Work the way you want"
        p {},
          "Cards have "
          em {}, "actions"
          " that shows what's been finished and what still needs to be done. Cards are pre-populated "
          "with the actions you do routinely, and you can change them to handle special cases."
        SignUpButton {color: 'orange'}
        ShowMoreButton {color: 'pink'}
      div {className: 'graphic'},
        Icon {name: 'actions', height: 60, width: 100, color: 'orange'}
        Icon {name: 'actions', height: 60, width: 100, color: 'pink'}

}

module.exports = ActionSlide
