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
require './PassSlide.styl'
#--------------------------------------------------------------------------------

PassSlide = React.createClass {

  displayName: 'PassSlide'

  statics:
    callout: {type: 'spotlight', x: 320, y: 40, image: require('images/screenshots/pass.jpg')}

  render: ->

    Slide {className: 'pass-slide'},
      div {className: 'text'},
        h3 {},
          "Pass the torch"
        p {},
          "When you need help from someone else, you "
          em {}, "pass"
          " them a card. It goes to their inbox, where they can choose to accept it "
          " or pass it along. It's even easier than sending an email."
        SignUpButton {color: 'orange'}
        ShowMoreButton {color: 'pink'}
      div {className: 'graphic'},
        Icon {name: 'woman',    height: 80, width: 80, color:  'pink'}
        Icon {name: 'exchange', height: 80, width: 70, colors: ['orange', 'pink']}
        Icon {name: 'man',      height: 80, width: 80, color:  'orange'}

}

module.exports = PassSlide
