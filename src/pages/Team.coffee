#--------------------------------------------------------------------------------
React      = require 'react'
Footer     = React.createFactory(require 'components/Footer')
Navigation = React.createFactory(require 'components/Navigation')
{h2, header, main, div, ul, li, a, img, p} = React.DOM
#--------------------------------------------------------------------------------
require './Team.styl'
#--------------------------------------------------------------------------------

Team = React.createClass {

  displayName: 'Team'

  render: ->

    div {className: 'team'},
      Navigation {sticky: true}
      div {className: 'content'},
        header {},
          h2 {},
            "We're on a mission to make you more productive."
          p {},
            "Driven by the belief that great things can happen when people with different backgrounds "
            "work together towards a common goal, we've spent the last seven years exploring ways to "
            "make teamwork more effective and less stressful."
        main {},
          div {className: 'profile pink'},
            img {src: require('images/niki.jpg')}
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
          div {className: 'profile orange'},
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
      Footer {}

}

module.exports = Team
