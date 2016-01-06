#--------------------------------------------------------------------------------
React      = require 'react'
ReactDOM   = require 'react-dom'
dom        = require 'util/dom'
Button     = React.createFactory(require 'components/Button')
Footer     = React.createFactory(require 'components/Footer')
Navigation = React.createFactory(require 'components/Navigation')
Point      = React.createFactory(require 'components/Point')
Section    = React.createFactory(require 'components/Section')
Slideshow  = React.createFactory(require 'components/Slideshow')
Video      = React.createFactory(require 'components/Video')
Slide      = React.createFactory(require 'components/Slide')
{br, div, em, header, h2, main, p} = React.DOM
#--------------------------------------------------------------------------------
require './Product.styl'
#--------------------------------------------------------------------------------

Product = React.createClass {

  displayName: 'Product'

  render: ->

    div {className: 'product'},
      Navigation {sticky: true}
      header {},
        h2 {},
          'TaskTorch helps ignite collaboration,'
          br {}
          'so you can '
          em {},
            'do amazing things together.'
        div {className: 'cta'},
          Button {color: 'orange'},
            "Start my free 30 day trial"
          Button {color: 'pink', onClick: @scrollDown},
            "How does it work?"
        div {className: 'gradient'}
      main {ref: 'main'},
        Section {color: 'pink', title: "It's simple to get started."},
          Video {id: 'mt1mqy5w5d'}
          Point {title: 'Get organized', align: 'left', figure: require('images/figures/cards.png')},
            "You can organize your work in a visual and easy-to-understand way using "
            em {}, "cards"
            ". "
            "Each card has a checklist of "
            em {}, "actions"
            " that show you what’s been finished and what still needs to be done. "
          Point {title: "Be in control of your commitments", align: 'right', figure: require('images/figures/queue.png')},
            "You have "
            em {}, "one list"
            " of your priorities, that "
            em {}, "only you"
            " can add to or change. "
            "No matter who you work with or what you do, you'll only ever have to go "
            "to one place to plan your day."
          Point {title: 'Stay focused on your work', align: 'left', figure: require('images/figures/personal-queues.png')},
            "Your priority list is visible to your teammates, so they'll know what you're "
            "planning to work on without having to interrupt you for status updates."
          Point {title: 'Work better together', align: 'right', figure: require('images/figures/passing.png')},
            "When you need help from someone else, you "
            em {}, "pass them a card"
            ". It’s even easier than sending an email, and you'll know when they’ve committed "
            "to working on it."
        Section {color: 'orange', title: "It's powerful enough to handle the hard stuff."},
          Video {id: 'f5pjaagrar'}
          Point {title: 'Customize to match your workflow', align: 'right', figure: require('images/figures/workflows.png')},
            "No matter how you work, it's easy to adapt TaskTorch to match. You can create "
            "different kinds of cards, each with their own unique workflow, and manage them "
            "all together in one list."
          Point {title: "Don't start from scratch", align: 'left', figure: require('images/figures/templates.png')},
            "You can create cards from templates, pre-populating them with actions that "
            "you often need to finish. You can always add or edit actions to handle anything "
            "that comes your way."
          Point {title: 'Step back and see the big picture', align: 'right', figure: require('images/figures/big-picture.png')},
            "When you complete an action, we automatically keep the "
            em {}, "big picture view"
            " up-to-date. You can stay focused on your work, and we'll make sure that "
            "everyone is on the same page."
          Point {title: 'Hit your most ambitious goals', align: 'left', figure: require('images/figures/goals.png')},
            "You can group cards into goals to keep everyone on target. No matter how many "
            "kinds of work are involved, you'll always know how much has been finished and "
            "what's still left to do."
          Point {title: 'Team up and take on the world', align: 'right', figure: require('images/figures/teams.png')},
            "No matter how many people are in your company, it's easy for them to "
            "self-organize into teams. Even better, you can pass cards to teams just like "
            "people. It's like a shared email inbox, but for tasks."
        Section {color: 'blue', title: 'More features being added all the time.'},
          Slideshow {},
            Slide {title: 'Cards', color: 'pink', align: 'top left', image: require('images/screenshots/card.png')},
              "Organize anything by creating tasks for yourself or your teammates"
            Slide {title: 'Priority Lists', color: 'orange', align: 'top right', image: require('images/screenshots/priorities.png')},
              "Stay focused by creating a single list of all your commitments that only you can add to"
            Slide {title: 'Passing Cards', color: 'blue', align: 'bottom left', image: require('images/screenshots/passing.png')},
              "Work together by sending cards to teammates or other teams"
            Slide {title: 'Card Kinds', color: 'pink', align: 'top right', image: require('images/screenshots/kinds.png')},
              "Save time by starting with a template where you can customize the workflow, actions, and more"
            Slide {title: 'Workflow', color: 'orange', align: 'top left', image: require('images/screenshots/workflow.png')},
              "Map the way that work really happens by creating different workflows for different kinds of work"
            Slide {title: 'Actions', color: 'blue', align: 'bottom right', image: require('images/screenshots/actions.png')},
              "Get more done by breaking down larger tasks into small, manageable pieces"
            Slide {title: 'Stacks', color: 'pink', align: 'top left', image: require('images/screenshots/stacks.png')},
              "Easily categorize tasks by grouping them into a backlog or batch"
            Slide {title: 'Automated Kanban Boards', color: 'orange', align: 'top right', image: require('images/screenshots/kanban.png')},
              "Never ask for a status update again by viewing the progress of everything in a simple, automated kanban view"
            Slide {title: 'Teams', color: 'blue', align: 'bottom left', image: require('images/screenshots/teams.png')},
              "See how everyone is doing by grouping people around a shared project or function"
            Slide {title: 'Goals', color: 'orange', align: 'top right', image: require('images/screenshots/goals.png')},
              "Create alignment by grouping cards into important objectives"
      Footer {}

  scrollDown: ->
    el = ReactDOM.findDOMNode(@refs.main)
    dom.scrollTo(el, {offset: -78})

}

module.exports = Product
