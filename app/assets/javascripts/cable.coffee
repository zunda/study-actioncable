#= require action_cable
#= require_self
#= require_tree ./channels
#
ActionCable.ConnectionMonitor.staleThreshold = 120;
@App ||= {}
App.cable = ActionCable.createConsumer()
