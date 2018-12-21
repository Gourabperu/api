class Google_Page
  include PageObject

  page_url 'google.com'

  text_field(:search_field, :css => '[name=q]')
  button(:buscar, :css => "input[name=btnK]")
  button(:con_suerte, :xpath => "//input[@class='lsb'][@value='Voy a tener suerte']")
  link(:gmail_link, :xpath => "//*[text()='Gmail']")

  def loaded?
    begin
      Watir::Wait.until {
        search_field_element.exists?
      }
      true
    rescue => error
      puts error.to_s
      false
    end
  end

  def enter_query(query)
    search_field_element.when_present(30).send_keys(query)
  end

  def submit
    sleep 1
    buscar
  end

  def feel_lucky
    sleep 1
    con_suerte
  end


end