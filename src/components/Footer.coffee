#--------------------------------------------------------------------------------
React                               = require 'react/addons'
{a, div, footer, img, li, span, ul} = React.DOM
#--------------------------------------------------------------------------------
require './Footer.styl'
#--------------------------------------------------------------------------------

Footer = React.createClass {

  displayName: 'Footer'

  render: ->

    footer {},
      div {className: 'links'},
        div {className: 'left'},
          img {className: 'logo', src: require('images/tasktorch-white.svg')}
          div {}, "TaskTorch"
        div {className: 'right'},
          ul {},
            li {},
              a {}, "Support"
            li {},
              a {}, "Terms of Service"
          ul {},
            li {},
              a {}, "Privacy"
            li {},
              a {}, "Billing"
          ul {},
            li {},
              a {}, "Blog"
            li {},
              a {}, "@TaskTorch"
      div {className: 'bottom'},
        "Made with "
        span {className: 'love'}, "\u2764"
        " and fueled by barbecue in Raleigh, North Carolina."

}

module.exports = Footer
