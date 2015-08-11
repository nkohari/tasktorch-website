#--------------------------------------------------------------------------------
React        = require 'react/addons'
classSet     = require 'util/classSet'
strings      = require 'util/strings'
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
    callout: {type: 'wide', x: 100, y: 60, image: require('images/screenshots/team.jpg')}

  render: ->

    Slide {className: 'team-slide'},
      div {className: 'text'},
        h3 {},
          "No more status meetings"
        p {},
          "Since everyone's queue is visible to everyone else, it just takes a glance to see what everyone "
          "else is working on, what their priorities are, and if they might need some help."
        Button {color: 'orange'},
          strings.CallToAction
      div {className: 'graphic'},
        Icon {name: 'teams', height: 90, width: 90, color: 'orange'}

}

module.exports = TeamSlide
