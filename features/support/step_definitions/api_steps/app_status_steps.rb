Given(/^the user requests information about the climate of the city of "([^"]*)"$/) do |city|
  @city = city
  @current_response= Be_Api_Helper::get_weather_info(city)
  puts @current_response
end

Then(/^the response status should be (\d+)$/) do |status_code|
  @current_response.code.should == status_code
end

Given(/^the user has the key of the weather serivces$/) do
  sleep 1
end

And(/^the service responds with information about the climate of the city of "([^"]*)"$/) do |city|
  JSON.parse(@current_response.body)['name'].should == city
  JSON.parse(@current_response.body)['coord'].should_not be nil
end