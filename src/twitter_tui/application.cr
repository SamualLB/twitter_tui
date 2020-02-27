class TwitterTUI::Application < TUI::Widget::Main
  def initialize
    super(nil)
    top_menu = TUI::Widget::Menu.new(self)
    stack = TUI::Widget::Stacked.new(self)

    TUI::Widget::Button.new(top_menu, "Home") { stack.index = 0 }
    TUI::Widget::Button.new(top_menu, "Followers") { stack.index = 1 }

    Home.new(stack)
    Followers.new(stack)

    self.top = top_menu
    layout << stack

    bind '1' { stack.index = 0; true }
    bind '2' { stack.index = 1; true }
  end
end
