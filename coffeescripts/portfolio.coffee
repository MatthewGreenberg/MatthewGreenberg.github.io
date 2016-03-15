#@codekit-prepend "../bower_components/jquery/dist/jquery.js"
$ ->
  $(".image").click ->
    $(@).addClass("active")
    $(".page-overlay").addClass("active")
    $(".content").addClass("active")
    $("#title, .overlay").css "display", "none"
    $(".exit").click =>
      $(@).removeClass("active")
      $(".page-overlay").removeClass("active")
      $(".content").removeClass("active")
      $("#title, .overlay").css "display", "block"
