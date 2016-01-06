#--------------------------------------------------------------------------------
_                  = require 'lodash'
React              = require 'react'
classSet           = require 'util/classSet'
dom                = require 'util/dom'
Icon               = React.createFactory(require 'components/Icon')
CSSTransitionGroup = React.createFactory(require 'react-addons-css-transition-group')
{PropTypes}        = React
{a, div, h2}       = React.DOM
#--------------------------------------------------------------------------------
require './Slideshow.styl'
#--------------------------------------------------------------------------------

Slideshow = React.createClass {

  displayName: 'Slideshow'

  propTypes:
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

    classes = classSet [
      'slideshow'
      'hovering' if @state.hovering
    ]

    div {className: classes, @onMouseEnter, @onMouseLeave},
      CSSTransitionGroup {component: 'div', className: 'content', transitionName: 'fade', transitionEnterTimeout: 500, transitionLeaveTimeout: 500},
        slide
      a {className: 'nav prev', onClick: @back},
        Icon {name: 'arrowLeft', height: 90, width: 90, color: 'white'}
      a {className: 'nav next', onClick: @forward},
        Icon {name: 'arrowRight', height: 90, width: 90, color: 'white'}

  onMouseEnter: ->
    @setState {hovering: true}

  onMouseLeave: ->
    @setState {hovering: false}

  startAutoAdvance: ->
    func = () =>
      @forward() if @isMounted() and not @state.hovering and dom.isVisible(React.findDOMNode(this))
      setTimeout(func, @props.delay)
    setTimeout(func, @props.delay)

  stopAutoAdvance: ->
    clearTimeout(@timeout) if @timeout

  back: ->
    slide = if @state.slide == 0 then (@slides.length - 1) else (@state.slide - 1)
    @setState {slide}

  forward: ->
    slide = (@state.slide + 1) % @slides.length
    @setState {slide}

}

module.exports = Slideshow
