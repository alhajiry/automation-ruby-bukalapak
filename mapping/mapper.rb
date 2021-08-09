#to map Test Data and Element Selector
require 'yaml'
require_relative '../support/local_driver'

class Mapper

  def initialize
  end

  def element_data_hash
    @element_selector = YAML.load_file("resources/selector.yml")
  end

  def test_data_hash
    @test_data = YAML.load_file("resources/test_data.yml")
  end

  def login_data_hash
    @login_data = YAML.load_file("resources/login_data.yml")
  end

  def key_element_processor(element)
    begin
        
        element_hash = element_data_hash[element]

        selector = element_hash.split(':').first
        locator  = element_hash.partition(':').last

        selector_data = [selector, locator]

        return selector_data

    rescue StandardError => e
        raise e.message
    end
  end

  def key_processor_login(data)
        begin

            data_hash = login_data_hash[data]

            account_username = data_hash.split('#').first
            account_password = data_hash.split('#').last

            login_data = [account_username, account_password]

            return login_data
        
        rescue StandardError => e
            raise e.message
        end
    end
end

