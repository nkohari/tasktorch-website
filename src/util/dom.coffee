exports.scrollTo = (element, adjustment = 0) ->
  document.body.scrollTop = element.offsetTop + adjustment

exports.getScrollPosition = getScrollPosition = () ->
  document.documentElement?.scrollTop or document.body.scrollTop

exports.getViewportHeight = getViewportHeight = () ->
  document.documentElement?.clientHeight or window.innerHeight

exports.getViewportWidth = getViewportWidth = () ->
  document.documentElement?.clientWidth or window.innerWidth

exports.isVisible = isVisible = (element, minPixelsVisible = 0) ->
  rect = element.getBoundingClientRect()
  (rect.top + minPixelsVisible) < getViewportHeight()
