exports.isVisible = (element) ->
  rect = element.getBoundingClientRect()
  rect.top >= 0 and
    rect.left >= 0 and
    rect.bottom <= (window.innerHeight or document.documentElement.clientHeight) and
    rect.right <= (window.innerWidth or document.documentElement.clientWidth)
