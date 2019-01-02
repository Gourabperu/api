
module Be_Api_Helper


  def self.get_weather_info(city)
    begin
      api_url="api.openweathermap.org/data/2.5/weather?q="
      api_password="e8474f0a8de0ac76e5b5a50db1d50a5d"
      service_url = api_url + city + "&appid=" +  api_password
      get_info = {:url => service_url}
      @current_response = API_Helper::send_get(get_info)
      return @current_response
    rescue => error
      API_Helper::handle_error(__method__, service_url, error, "Error while trying to weather info")
    end
  end

  def self.get_weather_info_key(city,key)
    begin
      api_url="api.openweathermap.org/data/2.5/weather?q="
      service_url = api_url + city + "&appid=" +  key
      get_info = {:url => service_url}
      @current_response = API_Helper::send_get(get_info)
      return @current_response
    rescue => error
      API_Helper::handle_error(__method__, service_url, error, "Error while trying to weather info")
    end
  end

end

World(Be_Api_Helper)