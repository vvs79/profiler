jQuery ->
  $mainPage = $('.main-page')
  if $mainPage.length
    $mainPage.on "click", ".calculate", (e) ->
      obj = $(this)
      obj.addClass('hidden')
      table = obj.parents('.main-page').find('.table').find('tbody')
      $.ajax
        type: 'GET'
        url: '/api/v1/calculate'
        data: { data: 5 }
        success: (data) ->
          if data
            obj.removeClass('hidden')
            table.empty()
            for i in data
              row = '<tr><td>' + i.id + '</td><td>' + i.email + '</td><td>' + i.age + '</td></tr>'
              table.prepend(row)
