require "twitter-crystal"
require "tui"
require "./twitter_tui/*"

module TwitterTUI
  VERSION = "0.1.0"

  def self.client : Twitter::REST::Client
    @@client ||= Twitter::REST::Client.new(ENV["CONSUMER_KEY"], ENV["CONSUMER_SECRET"], ENV["ACCESS_TOKEN"], ENV["ACCESS_TOKEN_SECRET"])
  end
end

client = app = TUI::Application.new(TwitterTUI::Application, TUI::Backend::NCurses, title: "Twitter")

app.exec
