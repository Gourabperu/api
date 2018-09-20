class Google_Page_Results
  include PageObject

  div(:filter_container, :id => 'hdtb-msb-vis')

  def loaded?
    begin
      Watir::Wait.until {
        filter_container_element.exists?
      }
      true
    rescue => error
      puts error.to_s
      false
    end
  end

  def page_results
    browser.text
  end

  def results
    # @browser.link(text: 'documentation').click
    # @browser.execute_script("document.evaluate(\"//*[@id='ckb-employee-is-#{type_employee}']\",document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()")
    # dropdown_currency_element.div_element(:text => currency).when_present(Timeouts::ELEMENT_PRESENT).click
    #
    # filter_letter_sel_element.element.elements( :xpath=> ".//div[contains(@class ,'item')]").each do |option|
    #   if option.text==status then option.click end
    # end
    #
    # modal_element.div_element(:id => "lnk-endorsementletter-type-#{tioaux}").when_present(Timeouts::ELEMENT_PRESENT).click

  end

end