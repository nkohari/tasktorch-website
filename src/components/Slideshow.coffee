#--------------------------------------------------------------------------------
_                  = require 'lodash'
React              = require 'react/addons'
classSet           = require 'util/classSet'
CSSTransitionGroup = React.createFactory(React.addons.CSSTransitionGroup)
{PropTypes}        = React
{a, div, h2, img}  = React.DOM
#--------------------------------------------------------------------------------
require './Slideshow.styl'
#--------------------------------------------------------------------------------

Slideshow = React.createClass {

  displayName: 'Slideshow'

  propTypes:
    name:     PropTypes.string
    title:    PropTypes.string
    backdrop: PropTypes.string

  getInitialState: ->
    {slide: 0}

  componentWillMount: ->
    @_setSlides(@props.children)

  componentWillReceiveProps: ->
    @_setSlides(@props.children)

  render: ->

    currentSlide = @slides[@state.slide]

    div {className: "slideshow #{@props.name}"},
      div {className: 'top'},
        div {className: 'header'},
          h2 {}, @props.title
          div {className: 'chiclets'}, @renderChiclets()
        div {className: 'graphic'},
          div {className: 'callout'}
      CSSTransitionGroup {component: 'div', className: 'caption', transitionName: 'fade'},
        currentSlide

  renderChiclets: ->
    _.map @slides, (slide, index) =>
      classes = classSet [
        'chiclet'
        'selected' if index == @state.slide
      ]
      a {className: classes}

  _setSlides: (children) ->
    @slides = _.compact _.flatten [children]

}

module.exports = Slideshow
