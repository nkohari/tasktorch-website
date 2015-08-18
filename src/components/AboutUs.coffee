#--------------------------------------------------------------------------------
_                            = require 'lodash'
React                        = require 'react/addons'
classSet                     = require 'util/classSet'
dom                          = require 'util/dom'
{a, div, h2, img, p, ul, li} = React.DOM
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
        h2 {}, "We're on a mission to help teams become more productive."
        p {},
          "Driven by the belief that great things can happen when people with different backgrounds "
          "work together towards a common goal, we've spent the last seven years exploring ways to "
          "make teamwork more effective and less stressful."
      div {className: 'bottom'},
        div {className: 'profile niki'},
          div {className: 'caption'},
            div {className: 'name'}, "Niki Kohari"
            div {className: 'bio'},
              "Niki is an I/O psychologist with expertise in team dynamics and cognitive processes. "
              "Previously, she was the co-founder of AgileZen and VP of Operations at Adzerk."
            ul {className: 'contact'},
              li {},
                a {href: "mailto:niki@tasktorch.com"}, "niki@tasktorch.com"
              li {},
                a {href: "https://twitter.com/nikibeth", target: "_blank"}, "@nikibeth"
          img {src: require('images/niki.jpg')}
        div {className: 'profile nate'},
          img {src: require('images/nate.jpg')}
          div {className: 'caption'},
            div {className: 'name'}, "Nate Kohari"
            div {className: 'bio'},
              "Nate is an engineer with 10 years of experience building software and software companies. "
              "Previously, he was the co-founder of AgileZen, CTO of Adzerk, and creator of Ninject."
            ul {className: 'contact'},
              li {}, 
                a {href: "mailto:nate@tasktorch.com"}, "nate@tasktorch.com"
              li {},
                a {href: "https://twitter.com/nkohari", target: "_blank"}, "@nkohari"

  handleScroll: ->
    visible = dom.isVisible(@getDOMNode(), 300)
    @setState {visible}

}

module.exports = AboutUs
