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
      div {className: 'text'},
        h3 {},
          "Pass the torch"
        p {},
          "When you're finished with your part, you pass the card to the next person "
          "or team who needs to contribute. The card goes to their inbox, where they "
          "can choose to accept it or pass it along."
        Button {color: 'orange'},
          "Sign up for our free beta"
      div {className: 'graphic'},
        div {className: 'item'},
          Icon {name: 'woman',    height: 90, width: 90,  color:  'pink'}
          Icon {name: 'exchange', height: 80, width: 70,  colors: ['orange', 'pink']}
          Icon {name: 'man',      height: 90, width: 90,  color:  'orange'}
        div {className: 'item'},
          Icon {name: 'woman',    height: 90, width: 90,  color:  'pink'}
          Icon {name: 'exchange', height: 80, width: 70,  colors: ['orange', 'pink']}
          Icon {name: 'team',     height: 85, width: 95, colors: ['orange', 'pink']}

}

module.exports = PassSlide
