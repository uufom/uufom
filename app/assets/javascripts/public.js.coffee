$(window).load ->
  $("#featured").orbit
    advanceSpeed: 8000

  sections = ["#main", "#who-we-are", "#gather-with-us", "#learn-with-us",
    "#serve-with-us", "#visit-us"]

  show_section = (name) ->

    for section in sections
      unless section == name
        $(section + "-section").hide()
        $(section + "-cell").removeClass("active")

    $(name + "-section").show()
    $(name + "-cell").addClass("active")

  prep_section = (name) ->
    $(name + "-section").hide() unless name == "#main"
    $(name).click ->
      show_section name

  prep_section section for section in sections
