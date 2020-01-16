jQuery ->
  $mainPage = $('.main-page')
  if $mainPage.length
    $mainPage.on "click", ".calculate", (e) ->
      obj = $(this)
      obj.hide()
      $.ajax
        type: 'GET'
        url: '/api/v1/calculate'
        data: { data: 5 }
        success: (data) ->
          if data
            obj.show()
