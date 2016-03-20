#@codekit-prepend "../bower_components/jquery/dist/jquery.js"
tl = new TimelineLite()
logo = new TimelineLite()
$ ->
	$(".project").click ->
		$(@).addClass("active")
		$(@).siblings(".project").addClass("hidden")

	$(".exit-project").click ->
		$('.project').removeClass 'active hidden'
		location.reload()

	$('.recent-projects').click ->
		$('html, body').animate { scrollTop: $('#recent-projects').offset().top }, 500
		return


	$('.about').click ->
		$('html, body').animate { scrollTop: $('#about').offset().top }, 500
		return
	$('.back').click ->
		$('html, body').animate { scrollTop: $('.logo').offset().top }, 500
		return
	#


	tl.to ".animate", 2,
		opacity: 1
		scale: 1
		ease: Power0.easeNone
  tl.to ".animate", 1,
    rotation: 360
    ease: Back.easeOut

	tl.to ".left", 0.8,
		zIndex: 0
		width: "0%"
		position: "absolute"
		left: "0%"
		top: "0%"
		ease: Power0.easeNone
		, "open"

	tl.to ".right, .left", 3,
		opacity: 0
		ease: Power0.easeNone
		, "open"

	tl.to ".right", 0.8,
		zIndex: 0
		width: "0%"
		left: "100%"
		top: "0%"
		ease: Power0.easeNone
		, "open"


	tl.to ".animate", 1,
		opacity: 0
		, "open"
