Given(/^"([^"]*)" has navigated to Google Page$/) do |customer|
  visit(Google_Page)
  on(Google_Page).loaded?.should be true
  @user=customer
end

When(/^he searches for "([^"]*)"$/) do |query|
  on(Google_Page).enter_query(query)
  on(Google_Page).submit
end

Then(/^System should display "([^"]*)" as result$/) do |title|
  on(Google_Page_Results).loaded?.should be true
  on(Google_Page_Results).page_results.include?(title).should == true
  date = DateTime.now.strftime("%d%b%Y%H%M%S")
  screenshot = "#{@suser.to_s.gsub(' ', '_').gsub(/[^0-9A-Za-z_]/, '')}#{date}.png"
  @browser.screenshot.save("#{Dir.pwd}/report/#{screenshot}")
end
