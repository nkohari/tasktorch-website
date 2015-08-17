#--------------------------------------------------------------------------------
React                                  = require 'react/addons'
dom                                    = require 'util/dom'
{a, div, footer, img, li, p, span, ul} = React.DOM
#--------------------------------------------------------------------------------
require './Footer.styl'
#--------------------------------------------------------------------------------

Footer = React.createClass {

  displayName: 'Footer'

  render: ->

    footer {},
      div {className: 'links'},
        a {className: 'left', onClick: @scrollToTop},
          img {className: 'logo', src: require('images/tasktorch-white.svg')}
          div {}, "TaskTorch"
        div {className: 'right'},
          ul {},
            li {},
              a {href: 'http://support.tasktorch.com'}, "Support"
            li {},
              a {href: 'http://support.tasktorch.com/articles/terms.html'}, "Terms of Service"
          ul {},
            li {},
              a {href: 'http://support.tasktorch.com/articles/privacy.html'}, "Privacy"
            li {},
              a {href: 'http://support.tasktorch.com/articles/billing.html'}, "Billing"
          ul {},
            li {},
              a {href: 'http://tasktorch.com/blog'}, "Blog"
            li {},
              a {href: 'http://twitter.com/tasktorch'}, "@TaskTorch"
      div {className: 'bottom'},
        p {},
          "Made with "
          span {className: 'love'}, "\u2764"
          " and fueled by barbecue in Raleigh, North Carolina."
        p {},
          "This website is "
          a {href: 'https://github.com/tasktorch/marketing', target: '_blank'}, "open source"
          "."

  scrollToTop: ->
    dom.scrollToTop()

}

module.exports = Footer
