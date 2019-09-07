App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append('  <p>' + escape(data['message']) + '</p>\n')

  speak: (message) ->
    @perform 'speak', message: message

escape = (text) ->
  text.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt').replace(/"/g, '&quot;').replace(/'/, '&#039;')

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return/enter = send
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()
