#--------------------------------------------------------------------------------
React       = require 'react/addons'
dom         = require 'util/dom'
mergeProps  = require 'util/mergeProps'
{PropTypes} = React
Button      = React.createFactory(require 'components/Button')
#--------------------------------------------------------------------------------

ShowMoreButton = React.createClass {

  displayName: 'ShowMoreButton'

  render: ->

    props = mergeProps @props, {
      onClick: @scrollToBigPicture
    }

    Button props,
      "Show me more"

  scrollToBigPicture: ->
    el = document.getElementById('bigpicture')
    dom.scrollTo(el, {offset: -70, duration: 500, easing: 'ease'})

}

module.exports = ShowMoreButton
