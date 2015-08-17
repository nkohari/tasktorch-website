#--------------------------------------------------------------------------------
React        = require 'react/addons'
classSet     = require 'util/classSet'
SignUpButton = React.createFactory(require 'components/SignUpButton')
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
    callout: {type: 'wide', x: 80, y: 60, image: require('images/screenshots/team.jpg')}

  render: ->

    Slide {className: 'team-slide'},
      div {className: 'text'},
        h3 {},
          "No more status meetings"
        p {},
          "Since everyone's queue is visible to everyone else, it just takes a glance to see what everyone "
          "on a team is working on, what their priorities are, and if they might need some help."
        SignUpButton {color: 'orange'}
      div {className: 'graphic'},
        Icon {name: 'team', height: 90, width: 90, color: 'orange'}
        Icon {name: 'sync', height: 60, width: 60, colors: ['orange', 'pink']}
        Icon {name: 'team', height: 90, width: 90, color: 'pink'}

}

module.exports = TeamSlide
