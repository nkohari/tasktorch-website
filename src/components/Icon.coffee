#--------------------------------------------------------------------------------
_           = require 'lodash'
React       = require 'react'
classSet    = require 'util/classSet'
mergeProps  = require 'util/mergeProps'
{PropTypes} = React
{svg, path} = React.DOM
#--------------------------------------------------------------------------------
require './Icon.styl'
#--------------------------------------------------------------------------------

Icon = React.createClass {

  displayName: 'Icon'

  propTypes:
    height:     PropTypes.number
    width:      PropTypes.number
    name:       PropTypes.string
    color:      PropTypes.string
    colors:     PropTypes.arrayOf(PropTypes.string)
    background: PropTypes.string

  render: ->

    data   = require("icons/#{@props.name}")
    colors = @getColorMap()

    paths = _.map data.paths, (p, index) =>
      path {key: index, className: colors[p.color], d: p.data}

    classes = classSet [
      'icon'
      @props.name
      @props.background if @props.background?
    ]

    props = mergeProps _.omit(@props, 'background', 'height', 'width', 'name', 'color', 'colors'), {
      className: classes
      style: {height: @props.height, width: @props.width}
      viewBox: "0 0 #{data.width} #{data.height}"
    }

    svg props, paths

  getColorMap: ->
    if @props.colors?
      @props.colors
    else if @props.color?
      [@props.color]
    else
      ['white']

}

module.exports = Icon
