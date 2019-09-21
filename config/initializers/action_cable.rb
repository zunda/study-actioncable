if ENV['AC_BEAT_INTERVAL']
  module ActionCable
    module Server
      module Connections
        BEAT_INTERVAL = ENV['AC_BEAT_INTERVAL'].to_f
      end
    end
  end
end
