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
    id:    PropTypes.string
    color: PropTypes.string

  render: ->

    section {id: @props.id, className: @props.color},
      @props.children

}

module.exports = Section
