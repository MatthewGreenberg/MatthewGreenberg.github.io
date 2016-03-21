#@codekit-prepend "../bower_components/jquery/dist/jquery.js"
tl = new TimelineLite()
window.open = true
intro = ->
  tl.to ".animate", 1.7,
    opacity: 1
    scale: 1
    ease: Back.easeOut
    ,"logo"
  tl.to ".animate", 1,
    rotation: 360
    ease: Back.easeOut
    , "logo"

  tl.to ".left", 0.5,
    zIndex: 0
    width: "0%"
    position: "absolute"
    left: "0%"
    top: "0%"
    ease: Power0.easeNone
    , "open"

  tl.to ".right, .left", 1,
    opacity: 0
    ease: Power0.easeNone
    , "open"

  tl.to ".right", 0.5,
    zIndex: 0
    width: "0%"
    left: "100%"
    top: "0%"
    ease: Power0.easeNone
    , "open"

  tl.to ".animate", 1,
    scale: 1.3
    , "open"
  tl.to ".animate", 0.5,
    opacity: 0
    , "open"
  open = !open
  return

$ ->
  $(".project").click ->
    $(@).addClass("active")
    $(@).siblings(".project").addClass("hidden")

  $(".exit-project").click ->
    $('.project').removeClass 'active'
    $('.project').removeClass 'hidden'
    window.open = false

  $('.recent-projects').click ->
    $('html, body').animate { scrollTop: $('#recent-projects').offset().top }, 500
    return


  $('.about').click ->
    $('html, body').animate { scrollTop: $('#about').offset().top }, 500
    return
  $('.back').click ->
    $('html, body').animate { scrollTop: $('.logo').offset().top }, 500
    return

  if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent))
    return
  else
    intro()
