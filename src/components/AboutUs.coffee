#--------------------------------------------------------------------------------
_                    = require 'lodash'
React                = require 'react/addons'
classSet             = require 'util/classSet'
dom                  = require 'util/dom'
{a, div, h2, img, p} = React.DOM
#--------------------------------------------------------------------------------
require './AboutUs.styl'
#--------------------------------------------------------------------------------

AboutUs = React.createClass {

  displayName: 'AboutUs'

  getInitialState: ->
    {visible: false}

  componentDidMount: ->
    window.addEventListener('scroll', @handleScroll)

  componentWillUnmount: ->
    window.removeEventListener('scroll', @handleScroll)

  render: ->

    classes = classSet [
      'about-us'
      'visible' if @state.visible
    ]

    div {className: classes},
      div {className: 'top'},
        h2 {}, "We're on a mission to help teams do great things together."
      div {className: 'bottom'},
        div {className: 'profile niki'},
          img {src: require('images/niki.jpg')}
          div {className: 'caption'},
            div {className: 'name'}, "Niki Kohari"
            div {className: 'title'}, "CEO and Ray of Sunshine"
            div {className: 'contact'},
              a {href: "mailto:niki@tasktorch.com"}, "niki@tasktorch.com"
              a {href: "https://twitter.com/nikibeth", target: "_blank"}, "@nikibeth"
        div {className: 'center'},
          p {},
            "Driven by the belief that great things happen when people with different backgrounds "
            "work together towards a common goal, we've been on a mission for the past seven years "
            "to help teams work better more effectively."
          p {},
            "We were frustrated that no project management system lets..."
        div {className: 'profile nate'},
          img {src: require('images/nate.jpg')}
          div {className: 'caption'},
            div {className: 'name'}, "Nate Kohari"
            div {className: 'title'}, "CTO and Professional Bitshifter"
            div {className: 'contact'},
              a {href: "mailto:nate@tasktorch.com"}, "nate@tasktorch.com"
              a {href: "https://twitter.com/nkohari", target: "_blank"}, "@nkohari"

  handleScroll: ->
    visible = dom.isVisible(@getDOMNode(), 500)
    @setState {visible}

}

module.exports = AboutUs
