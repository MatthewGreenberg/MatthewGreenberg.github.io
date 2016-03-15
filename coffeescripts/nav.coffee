$ ->
  $(".fa-bars").click ->
    $(".nav-overlay").addClass("active")

  $(".exit, .nav-item").click ->
    $(".nav-overlay").removeClass("active")
