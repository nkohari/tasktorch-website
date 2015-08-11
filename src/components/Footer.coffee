#--------------------------------------------------------------------------------
React                                  = require 'react/addons'
{a, div, footer, img, li, p, span, ul} = React.DOM
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
        p {},
          "Made with "
          span {className: 'love'}, "\u2764"
          " and fueled by barbecue in Raleigh, North Carolina."
        p {},
          "This website is "
          a {href: 'https://github.com/tasktorch/marketing', target: '_blank'}, "open source"
          "."

}

module.exports = Footer
