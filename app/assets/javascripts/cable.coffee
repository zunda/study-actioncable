#= require action_cable
ActionCable.ConnectionMonitor.staleThreshold = 120;
#= require_self
#= require_tree ./channels

@App ||= {}
App.cable = ActionCable.createConsumer()
