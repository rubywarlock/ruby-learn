class A

end

class B
  def user_settings_tabs
    puts "Aloha!"
  end

  def prepare_user_page_tabs
    puts "Calling method..."
    build_user_page_tabs
    puts "...Method called"
  end

  alias_method :build_user_page_tabs, :user_settings_tabs
  alias_method :user_settings_tabs, :prepare_user_page_tabs
end

B.new.user_settings_tabs
#Class.new.salute_without_log