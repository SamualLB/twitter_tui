require "twitter-crystal"

module TwitterTui
  VERSION = "0.1.0"
end

client = Twitter::REST::Client.new(ENV["CONSUMER_KEY"], ENV["CONSUMER_SECRET"], ENV["ACCESS_TOKEN"], ENV["ACCESS_TOKEN_SECRET"])

pp client.friend_ids
