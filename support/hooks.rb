require_relative '../support/local_driver'

Before do | scenario |
  LocalDriver.start_driver
end

After do | scenario |
  LocalDriver.close_web
end
