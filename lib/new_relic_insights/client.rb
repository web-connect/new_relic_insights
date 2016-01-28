module NewRelicInsights
  class Client
    def initialize account_id, api_key
      @account_id = account_id
      @api_key = api_key
    end


    def send_event type, data_to_send
      data_to_send.merge!(:eventType=>type)
      connection.post do |req|
        req.url events_url
        req.headers['X-Insert-Key'] = @api_key
        req.body = data_to_send.to_json
      end
    end

    def connection
      @conn ||= Faraday.new do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    end

    private

    def base_url
      "https://insights-collector.newrelic.com/v1/accounts/#{@account_id}"
    end
    def events_url
      "#{base_url}/events"
    end
  end
end