require 'capybara'
require 'site_prism'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'capybara-screenshot/cucumber'
require 'pry'

SEARCH = YAML.load_file('/Users/Yarboi/RubymineProjects/PhpTravel/features/step_definitions/config/search_data.yml')
binding.pry
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, js_errors: false, timeout: 40)
end

Capybara.register_driver :firefox do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['browser.cache.disk.enable'] = false
  profile['browser.cache.memory.enable'] = false
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = ENV['DRIVER'].to_sym || :poltergeist
  puts ENV['DRIVER']
  config.default_max_wait_time = 30
  config.match = :prefer_exact
  config.ignore_hidden_elements = false
  config.visible_text_only = true
end


SitePrism.configure do |config|
  config.use_implicit_waits = true
end

Capybara.javascript_driver = Capybara.default_driver
Capybara.app_host = "http://phptravels.net"
