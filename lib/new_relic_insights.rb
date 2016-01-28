require "new_relic_insights/version"
require 'new_relic_insights/client'
module NewRelicInsights

  class << self
    
    def new(*args, &block)
      NewRelicInsights::Client.new(*args, &block)
    end

  end
end
