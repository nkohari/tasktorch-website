#--------------------------------------------------------------------------------
React      = require 'react/addons'
mergeProps = require 'util/mergeProps'
{div}      = React.DOM
#--------------------------------------------------------------------------------
require './Slide.styl'
#--------------------------------------------------------------------------------

Slide = React.createClass {

  displayName: 'Slide'

  render: ->

    props = mergeProps @props, {
      className: 'slide'
    }

    div props,
      @props.children

}

module.exports = Slide
