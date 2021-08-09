def user_find(selector, element, timeout = 30)
  begin
    
      wait = Selenium::WebDriver::Wait.new(:timeout => timeout)

      if selector == 'id'
          element_path = wait.until {$driver.find_element(:id, element)}
      elsif selector == 'name'
          element_path = wait.until {$driver.find_element(:name, element)}
      elsif selector == 'xpath'
          element_path = wait.until {$driver.find_element(:xpath, element)}
      elsif selector == 'class'
          element_path = wait.until {$driver.find_element(:class, element)}
      elsif selector == 'data-testid'
          selector_data = "//*[@data-testid='#{element_path}']"
          element_path = wait.until {$driver.find_element(:xpath, selector_data)}
      end

  rescue StandardError => e
      raise e.message
  end

  return element_path  

end

def wait_for_element_clickable (selector, element, timeout = 30)
    begin
      wait = Selenium::WebDriver::Wait.new(timeout => timeout)
      element = wait.until {user_find(selector, element)}
      wait.until{ element.displayed? }
      wait.until{ element.enabled? }
    rescue StandardError => e
        raise e.message
    end

    return element
end

def click_element(selector, element)
    begin
      web_element = wait_for_element_clickable(selector, element)

      web_element.click
    rescue StandardError => e
        raise e.message
    end
end


def user_fill(selector, element, data)
  begin
    # wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    web_element = user_find(selector, element)
    isread_only = web_element.attribute('readonly')

    if (isread_only)
      $driver.execute_script("arguments[0].removeAttribute('readonly', 'readonly');",web_element)
    end

    web_element.clear
    web_element.send_keys(data)
  
  rescue StandardError => e
    raise e.message
  end
end

def user_get_value(selector, element, el_attribute)
  begin
    element_value = user_find(selector, element).attribute(el_attribute)

  rescue StandardError => e
    raise e.message
  end

    return element_value

end

def user_get_text(selector, element)
  begin
    element_text = user_find(selector, element).text

  rescue StandardError => e
    raise e.message
  end

  return element_text

end

def element_displayed_checker(selector, element, timeout = 15) 
    is_displayed = false
    
  begin

    if user_find(selector, element, timeout) != nil
      is_displayed = true
    end
  
  rescue StandardError => e
    is_displayed = false
  end
  
  return is_displayed

end

def element_not_displayed_checker(selector, element, timeout = 15)
  !element_displayed_checker(selector, element, timeout)
end
