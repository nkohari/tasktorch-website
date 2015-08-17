#--------------------------------------------------------------------------------
_                  = require 'lodash'
React              = require 'react/addons'
classSet           = require 'util/classSet'
dom                = require 'util/dom'
Callout            = React.createFactory(require 'components/Callout')
Icon               = React.createFactory(require 'components/Icon')
CSSTransitionGroup = React.createFactory(React.addons.CSSTransitionGroup)
{PropTypes}        = React
{a, div, h2}       = React.DOM
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
        div {className: 'frame'},
          CSSTransitionGroup {component: 'div', className: 'backdrop', transitionName: 'fade'},
            Callout {key: @state.slide, image: callout.image, type: callout.type, x: callout.x, y: callout.y, onClick: @forward}
          a {className: 'nav prev', onClick: @back},
            Icon {name: 'arrowLeft', height: 90, width: 90, color: 'white'}
          a {className: 'nav next', onClick: @forward},
            Icon {name: 'arrowRight', height: 90, width: 90, color: 'white'}
      div {className: 'bottom'},
        CSSTransitionGroup {component: 'div', className: 'caption', transitionName: 'fade'},
          slide

  onMouseEnter: ->
    @setState {hovering: true}

  onMouseLeave: ->
    @setState {hovering: false}

  startAutoAdvance: ->
    func = () =>
      @forward() if @isMounted() and not @state.hovering and dom.isVisible(React.findDOMNode(@refs.top))
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
