Velocity = require 'velocity-animate' if window?

exports.scrollTo = scrollTo = (element, options = undefined) ->
  Velocity(element, 'scroll', options)

exports.scrollToTop = scrollToTop = () ->
  el = document.getElementsByTagName('html')[0]
  scrollTo(el)

exports.getScrollPosition = getScrollPosition = () ->
  document.documentElement?.scrollTop or document.body.scrollTop

exports.getViewportHeight = getViewportHeight = () ->
  document.documentElement?.clientHeight or window.innerHeight

exports.getViewportWidth = getViewportWidth = () ->
  document.documentElement?.clientWidth or window.innerWidth

exports.isVisible = isVisible = (element, minPixelsVisible = 0) ->
  rect = element.getBoundingClientRect()
  (rect.top + minPixelsVisible) < getViewportHeight()
