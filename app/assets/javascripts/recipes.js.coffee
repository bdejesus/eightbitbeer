$(document).ready(->
  $('.expand-setting').on('click', (e)->
    $(this).parents('fieldset').find('.hidden-setting').slideDown('fast')
    $(this).remove()
    e.preventDefault()
  )
)