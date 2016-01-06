#--------------------------------------------------------------------------------
React       = require 'react'
{PropTypes} = React
{div}       = React.DOM
#--------------------------------------------------------------------------------

Video = React.createClass {

  displayName: 'Video'

  propTypes:
    id: PropTypes.string

  render: ->

    div {className: 'video'},
      div {className: "wistia_embed wistia_async_#{@props.id} videoFoam=true"}

}

module.exports = Video
