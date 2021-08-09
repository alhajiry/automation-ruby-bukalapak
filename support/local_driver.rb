require 'selenium-webdriver'
require_relative '../env'

class LocalDriver
  attr_accessor :driver, :path

  def initialize
    $driver = nil
  end

  def self.start_driver
    Selenium::WebDriver::Chrome::Service.driver_path=$webdriver
    $driver = Selenium::WebDriver.for :chrome
    $driver.manage.window.maximize
    $driver.navigate.to "#{ENV['URL']}"
  end

  def self.close_web
    $driver.close
  end
end
