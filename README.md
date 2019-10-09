# StudyActioncable
A minimal chat application without even a history of conversation.

## Configurations
This application is to test behavior of Heroku routers.

[`cable.coffee`](/app/assets/javascripts/cable.coffee) defines `staleThreshold` to be 120 seconds. The browser waits for 120 seconds before trying to reconnect the WebSocket to the server.

The [`action_cable.rb` initializer](config/initializers/action_cable.rb) looks up the `AC_BEAT_INTERVAL` environment variable. Set this to 55 or more to trigger the [H15 - Idle connection](https://devcenter.heroku.com/articles/error-codes#h15-idle-connection) error.
