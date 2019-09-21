if ENV['AC_BEAT_INTERVAL']
  module ActionCable
    module Server
      module Connections
        BEAT_INTERVAL = Integer(ENV['AC_BEAT_INTERVAL'])
      end
    end
  end
end
