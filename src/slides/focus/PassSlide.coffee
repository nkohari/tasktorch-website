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
require './PassSlide.styl'
#--------------------------------------------------------------------------------

PassSlide = React.createClass {

  displayName: 'PassSlide'

  statics:
    callout: {type: 'spotlight', x: 400, y: 60, image: require('images/screenshots/pass.png')}

  render: ->

    Slide {className: 'pass-slide'},
      div {className: 'text'},
        h3 {},
          "Pass the torch"
        p {},
          "When you need help from someone else, you "
          em {}, "pass"
          " them a card. It goes to their inbox, where they can choose to accept it "
          " or pass it along. It's kind of like email, but without the pain."
        Button {color: 'orange'},
          strings.CallToAction
      div {className: 'graphic'},
        Icon {name: 'woman',    height: 90, width: 90,  color:  'pink'}
        Icon {name: 'exchange', height: 80, width: 70,  colors: ['orange', 'pink']}
        Icon {name: 'man',      height: 90, width: 90,  color:  'orange'}

}

module.exports = PassSlide
