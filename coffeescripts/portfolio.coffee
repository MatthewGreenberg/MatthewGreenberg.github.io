#@codekit-prepend "../bower_components/jquery/dist/jquery.js"
img = new TimelineLite()
nav = new TimelineLite()
staggerImages = ->
  img.staggerFrom ".image", 1,
    scale: 0
  ,0.2

staggerMenu = ->
  nav.staggerTo "nav > ul > li", 0.6,
    left: "0%"
  ,0.2


$ ->
  staggerImages()
  $(".image").click ->
    $(@).addClass("active")
    $(".page-overlay").addClass("active")
    $(".content").addClass("active")
    $("#title, .overlay").css "display", "none"
    $(".exit, .page-overlay").click =>
      $(@).removeClass("active")
      $(".page-overlay").removeClass("active")
      $(".content").removeClass("active")
      $("#title, .overlay").css "display", "block"

  open = true
  $("#menu").click ->
    if open
      staggerMenu()
      open = !open
    else
      nav.reverse()
      open = !open
