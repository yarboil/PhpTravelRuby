Given(/^I am on homepage$/) do
  @home_page = HomePage.new
  @home_page.load
end