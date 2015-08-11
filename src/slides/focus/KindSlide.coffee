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
require './KindSlide.styl'
#--------------------------------------------------------------------------------

KindSlide = React.createClass {

  displayName: 'KindSlide'

  statics:
    callout: {type: 'spotlight', x: 400, y: 60, image: require('images/screenshots/actions.png')}

  render: ->

    Slide {className: 'kind-slide'},
      div {className: 'text'},
        h3 {},
          "No more project silos"
        p {},
          "You can create many different "
          em {}, "kinds"
          " of cards, so you won't need a separate \"project\" for each kind of work. "
          "Customer support requests are in the same list as engineering work, and so on."
        Button {color: 'orange'},
          strings.CallToAction
      div {className: 'graphic'},
        Icon {name: 'stack', height: 100, width: 110, colors: ['orange', 'pink', 'blue']}
        Icon {name: 'stack', height: 100, width: 110, colors: ['pink', 'orange', 'blue']}

}

module.exports = KindSlide
