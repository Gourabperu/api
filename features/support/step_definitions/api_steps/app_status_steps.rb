
Given(/^the user has the key of the weather services$/) do
  sleep 1
end

#HappyPath

When(/^the user requests information about the climate of the city of "([^"]*)"$/) do |city|
  @city = city
  @current_response= Be_Api_Helper::get_weather_info(city)
  puts @current_response
end

Then(/^the response status should be (\d+)$/) do |status_code|
  @current_response.code.should == status_code
end

And(/^the service responds with information about the climate of the city of "([^"]*)"$/) do |city|
  JSON.parse(@current_response.body)['name'].should == city
  JSON.parse(@current_response.body)['coord'].should_not be nil
  JSON.parse(@current_response.body)['weather'].should_not be nil
end


#Error response ,not found weather for this city

Then("the service responds detail information about error") do
  JSON.parse(@current_response.body)['cod'].should == '404'
  JSON.parse(@current_response.body)['message'].should == 'city not found'
end

#Api Key invalid

When("the user requests information about the climate of the {string} sending invalid keys {string}") do |city,key|
  @current_response= Be_Api_Helper::get_weather_info_key(city,key)
  puts @current_response
end

Then("the response status invalid key should be {int}") do |status_code|
  @current_response.code.should == status_code
  #JSON.parse(@current_response.body)['cod'].should == "401"
end


