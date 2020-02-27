class TwitterTUI::Followers < TUI::Widget
  @follower_ids : Array(Int64)

  def initialize(parent : TUI::Widget? = nil)
    super(parent)
    @follower_ids = TwitterTUI.client.follower_ids
  end

  def paint(p : TUI::Painter)
    p[0, 0] = "Followers: "
    @follower_ids.each_with_index do |id, i|
      p[1, i + 1] = id.to_s
    end
    true
  end
end
