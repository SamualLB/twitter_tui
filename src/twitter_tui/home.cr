class TwitterTUI::Home < TUI::Widget
  @tweets : Array(Twitter::Tweet)

  def initialize(parent : TUI::Widget? = nil)
    super(parent)
    @tweets = TwitterTUI.client.home_timeline
  end

  def paint(p : TUI::Painter)
    p[0, 0] = "Home: "
    @tweets.each_with_index do |tweet, i|
      p[1, i + 1] = "#{tweet.id}: #{tweet.text}"
    end
    true
  end
end
