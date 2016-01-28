# New Relic Insights

This is a simple ruby client which implements the New Relic Inights REST API. It is in no way affiliate with New Relic.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'new_relic_insights'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install new_relic_insights

## Usage
```ruby
# initiate a client
@insights = NewRelicInsights.new ACCOUNT_ID, ACCOUNT_API_KEY

# build a hash to send to New Relic
my_event_data_hash = {:name=>'random', :foo=>'bar'}

# send to new relic
@insights.send_event 'some_table_name', my_event_data_hash
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/web-connect/new_relic_insights.

