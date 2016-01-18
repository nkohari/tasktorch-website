#--------------------------------------------------------------------------------
React         = require 'react'
Button        = React.createFactory(require 'components/Button')
Footer        = React.createFactory(require 'components/Footer')
Navigation    = React.createFactory(require 'components/Navigation')
Video         = React.createFactory(require 'components/Video')
{a, br, div, header, h2, h3, h4, img, main, span, iframe, em, p, ul, li} = React.DOM
#--------------------------------------------------------------------------------
require './Pricing.styl'
#--------------------------------------------------------------------------------

Pricing = React.createClass {

  displayName: 'Pricing'

  render: ->

    div {className: 'pricing'},
      Navigation {sticky: true}
      div {className: 'content'},
        header {},
          h2 {},
            'Simple, transparent pricing.'
          div {className: 'banner'},
            div {className: 'price'},
              div {className: 'dolla'}, "$"
              div {className: 'number'}, "7"
              div {className: 'per'},
                span {}, 'per user'
                span {}, 'per month'
            div {className: 'subheader'},
              "Your account comes with a free 30-day trial. No credit card required."
              br {}
              "No long-term commitment, no hidden charges."
            div {className: 'cta'},
              Button {color: 'orange', href: 'https://app.tasktorch.com/signup'}, "Get started today"
              Button {color: 'pink', to: '/product'}, "Take a product tour"
        main {},
          div {className: 'philosophy'},
            h3 {},
              img {src: require('images/trophy.png')}
              "Our Philosophy"
            p {},
              "There's "
              em {}, "no better investment"
              " to increase satisfaction at work and reduce "
              "unnecessary stress than making teamwork and organizing tasks easier and more efficient."
            p {},
              "We believe in "
              em {}, "fair and transparent pricing"
              ", so there are no confusing tiers, complex calculators, or hidden fees. "
              "We think that "
              em {}, "your tools should work for you"
              " instead of against you, so there's no pressure to buy something that doesn't fit. "
              "If you have questions, there's "
              em {}, "always a human here"
              " to help you make the most out of TaskTorch."
            p {},
              "We believe that the way you work is a "
              em {}, "reflection of your culture"
              ", and we're all about empowered individuals, self-organizing teams, and transparent "
              "and collaborative companies.  TaskTorch is an investment in changing the way you work "
              "together for the better, so we've set the price to ensure we offer a great product "
              "and amazing support for our customers."
          div {className: 'faq'},
            h3 {},
              img {src: require('images/faq.png')}
              "Frequently Asked Questions"
            ul {},
              li {},
                h4 {},
                  span {className: 'pink q'}, "Q: "
                  "Can I try TaskTorch for free?"
                p {},
                  "Absolutely, and there's no need to enter a credit card to try out TaskTorch! "
                  "Every new organization receives a 30-day, unlimited trial. Feel free to invite "
                  "who you want, create a bunch of tasks, and test out everything we have to offer."
                p {},
                  "We'd love to work with you, but we won't pressure you into a solution that doesn't "
                  "feel right. We want you to be able to try out our product without feeling pushed "
                  "into a decision, so if you need more time in your trial, just let us know. "
                  "Once you know TaskTorch is right for you and your team, we'll only ever charge "
                  "you for active users on your account."
              li {},
                h4 {},
                  span {className: 'orange q'}, "Q: "
                  "What are my payment options?"
                p {},
                  "You can use your credit card to pay for TaskTorch. Just add your billing information "
                  "to the account management screen any time during your trial, and we'll charge "
                  "you once your trial period expires. It's simple, fast, and secure!"
                p {},
                  "If you're interested in a year commitment for your organization, we can invoice "
                  "you annually for an enterprise plan. Please contact us to get the process going."
              li {},
                h4 {},
                  span {className: 'orange q'}, "Q: "
                  "How often will my credit card be billed?"
                p {},
                  "You'll be billed on your credit card on the day your trial expires and every 30 days "
                  "thereafter based on the number of active users in your account. We bill in advance "
                  "for a month of service, which is 30 consecutive days."
              li {},
                h4 {},
                  span {className: 'pink q'}, "Q: "
                  "Can I cancel my account at any time?"
                p {},
                  "Yes! There are no long-term commitments and you can cancel whenever you want through "
                  "the account management screen. It's a quick and painless process."
              li {},
                h4 {},
                  span {className: 'pink q'}, "Q: "
                  "Do you offer any discounts?"
                p {},
                  "We believe in supporting the community as much as we can, so we offer discounts for "
                  "non-profit and charitable organizations. Please contact us if you qualify and we'll "
                  "add the discount to your TaskTorch account. We hope to offer more discounts in the future."
              li {},
                h4 {},
                  span {className: 'orange q'}, "Q: "
                  "Is there an on-premise version of TaskTorch?"
                p {},
                  "We don't plan on offering an internally hosted version of TaskTorch. If you have "
                  "questions or concerns about security, please feel free to reach out."
          div {className: 'contact'},
            div {className: 'divider'}
            p {},
              "Have questions? Get in touch at "
              a {href: "mailto:sales@tasktorch.com"}, "sales@tasktorch.com"
              "!"
            div {className: 'divider'}
          div {className: 'cta'},
            Button {color: 'orange', href: 'https://app.tasktorch.com/signup'}, "Get started today"
            Button {color: 'pink', to: '/product'}, "Take a product tour"
      Footer {}

}

module.exports = Pricing
