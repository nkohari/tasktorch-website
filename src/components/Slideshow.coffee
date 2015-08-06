#--------------------------------------------------------------------------------
_                  = require 'lodash'
React              = require 'react/addons'
classSet           = require 'util/classSet'
dom                = require 'util/dom'
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
    delay:    PropTypes.number

  getDefaultProps: ->
    {delay: 5000}

  getInitialState: ->
    {hovering: false, slide: 0}

  componentWillMount: ->
    slides = _.compact _.flatten [@props.children]
    @slides = _.map slides, (slide, index) ->
      React.cloneElement slide, {key: index}

  componentWillReceiveProps: (newProps) ->
    slides = _.compact _.flatten [newProps.children]
    @slides = _.map slides, (slide, index) ->
      React.cloneElement slide, {key: index}

  componentDidMount: ->
    #@startAutoAdvance()

  componentWillUnmount: ->
    @stopAutoAdvance()

  render: ->

    slide = @slides[@state.slide]
    callout = slide.type.callout

    classes = classSet [
      'slideshow'
      @props.name
      'hovering' if @state.hovering
    ]

    div {className: classes, @onMouseEnter, @onMouseLeave},
      div {ref: 'top', className: 'top'},
        div {className: 'header'},
          h2 {}, @props.title
          div {className: 'chiclets'}, @renderChiclets()
        CSSTransitionGroup {component: 'div', className: 'backdrop', transitionName: 'fade', onClick: @advance},
          div {key: @state.slide, className: 'callout', style: {left: callout.x, top: callout.y}},
            img {src: callout.image}
      div {className: 'bottom'},
        CSSTransitionGroup {component: 'div', className: 'caption', transitionName: 'fade'},
          slide

  renderChiclets: ->
    _.map @slides, (slide, index) =>
      classes = classSet [
        'chiclet'
        'selected' if index == @state.slide
      ]
      a {key: index, className: classes, onClick: @setSlide.bind(this, index)}

  onMouseEnter: ->
    @setState {hovering: true}

  onMouseLeave: ->
    @setState {hovering: false}

  startAutoAdvance: ->
    func = () =>
      @advance() if @isMounted() and not @state.hovering and dom.isVisible(React.findDOMNode(@refs.top))
      setTimeout(func, @props.delay)
    setTimeout(func, @props.delay)

  stopAutoAdvance: ->
    clearTimeout(@timeout) if @timeout

  setSlide: (slide) ->
    @setState {slide}

  advance: ->
    slide = (@state.slide + 1) % @slides.length
    @setState {slide}

}

module.exports = Slideshow
