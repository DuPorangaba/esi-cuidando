require 'capybara'
require 'capybara/cucumber'
require 'rspec/expectations'
World(RSpec::Matchers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome_headless
end