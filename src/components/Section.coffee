#--------------------------------------------------------------------------------
React       = require 'react/addons'
{PropTypes} = React
{section}   = React.DOM
#--------------------------------------------------------------------------------
require './Section.styl'
#--------------------------------------------------------------------------------

Section = React.createClass {

  displayName: 'Section'

  propTypes:
    color: PropTypes.string

  render: ->

    section {className: @props.color},
      @props.children

}

module.exports = Section
