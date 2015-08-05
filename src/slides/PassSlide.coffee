#--------------------------------------------------------------------------------
React        = require 'react/addons'
classSet     = require 'util/classSet'
Button       = React.createFactory(require 'components/Button')
Icon         = React.createFactory(require 'components/Icon')
Slide        = React.createFactory(require 'components/Slide')
{PropTypes}  = React
{div, h3, p} = React.DOM
#--------------------------------------------------------------------------------
require './PassSlide.styl'
#--------------------------------------------------------------------------------

PassSlide = React.createClass {

  displayName: 'PassSlide'

  statics:
    callout: {x: 400, y: 60, image: require('images/screenshots/pass.png')}

  render: ->

    Slide {className: 'pass-slide'},
      div {className: 'graphic'},
        Icon {name: 'woman',    size: 120, color:  'pink'}
        Icon {name: 'exchange', size: 80, colors: ['orange', 'pink']}
        Icon {name: 'man',      size: 120, color:  'orange'}
      div {className: 'text'},
        h3 {},
          "Pass the torch"
        p {},
          "When you're finished with your part, you pass the card to the next person "
          "who needs to contribute. You can also pass cards to teams, and let anyone "
          "on the team claim them."
        Button {color: 'orange'},
          "Sign up for our free beta"

}

module.exports = PassSlide
