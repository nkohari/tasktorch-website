exports.getViewportHeight = getViewportHeight = () ->
  document.documentElement?.clientHeight or window.innerHeight

exports.getViewportWidth = getViewportWidth = () ->
  document.documentElement?.clientWidth or window.innerWidth

exports.isVisible = isVisible = (element, minPixelsVisible = 0) ->
  rect = element.getBoundingClientRect()
  (rect.top + minPixelsVisible) < getViewportHeight()
