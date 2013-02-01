###
[Brunch with impress.js][0], distributed under [Public Domain][1]

[0]: http://github.com/japboy/brunch-with-impress.js
[1]: http://creativecommons.org/licenses/publicdomain/
###

ready = ->
  impress().init()
  hljs.initHighlightingOnLoad()

  # Resize each slide to window size
  resize = ->
    elements = document.querySelectorAll '#impress .fill'
    innerHeight = window.innerHeight
    innerWidth = window.innerWidth

    for element in elements
      element.style.height = "#{innerHeight}px"
      element.style.width = "#{innerWidth}px"

  # Highlight without <code> elements
  highlight = ->
    elements = document.querySelectorAll '#impress pre'

    for element in elements
      hljs.highlightBlock element


  window.addEventListener 'resize', resize, false

  resize()
  highlight()

document.addEventListener 'DOMContentLoaded', ready, false
