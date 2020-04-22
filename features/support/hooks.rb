require 'watir'

Before  do |scenario|
  DataMagic.load_for_scenario(scenario)
end


After do

end


Before ('@e2e') do
  @browser = Watir::Browser.new :chrome, headless:false
  #@browser = Watir::Browser.new :chrome, {timeout: 120, url: 'http://localhost:4444/wd/hub'}
  screen_width = @browser.execute_script('return screen.width;')
  screen_height = @browser.execute_script('return screen.height;')
  @browser.driver.manage.window.resize_to(screen_width, screen_height)
  @browser.driver.manage.window.move_to(0, 0)
end

After ('@e2e') do
  @browser.close
end

