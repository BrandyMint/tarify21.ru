#= require jquery
#= require jquery_ujs
#= require jquery.turbolinks
#= require jquery.role
#= require turbolinks
#= require bootstrap
#= require_tree .

# require jquery.freetile
# require jquery_ujs
# require jquery-ui
# require jquery.ui.datepicker-ru
# require select2
# require jquery_nested_form
#
# sass-ный jquery
# require jquery.ui.all

$ ->
  $('.tooltip').tooltip()
  # $('#freetile').freetile()
  # $('input.ui-date-picker').datepicker()
  # $('input.ui-datetime-picker').datetimepicker()
  # $('input.select2').select2()
  # $('select.select2').select2
  #  width: 'element'
  #
  $(document).on 'click', "@clickable", (e)->
    window.location = $(e.currentTarget).data 'url'

  return
