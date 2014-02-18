# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->                                      # everything will run as per the jQuary function
    $('.user').hover (event) ->              # will display when mouse comes
        $(this).toggleClass("hover")         # over it(here edit, delete links)