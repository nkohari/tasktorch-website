#--------------------------------------------------------------------------------
React        = require 'react/addons'
classSet     = require 'util/classSet'
Button       = React.createFactory(require 'components/Button')
Icon         = React.createFactory(require 'components/Icon')
Slide        = React.createFactory(require 'components/Slide')
{PropTypes}  = React
{div, h3, p} = React.DOM
#--------------------------------------------------------------------------------
require './TeamSlide.styl'
#--------------------------------------------------------------------------------

TeamSlide = React.createClass {

  displayName: 'TeamSlide'

  statics:
    callout: {type: 'wide', x: 200, y: 60, image: require('images/screenshots/team.jpg')}

  render: ->

    Slide {className: 'team-slide'},
      div {className: 'text'},
        h3 {},
          "Stay action-oriented"
        p {},
          "Stuff"
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

module.exports = TeamSlide
