require 'spec_helper'

RSpec.feature 'HomePage', js: true do
  before(:all) do
     @home_page = HomePage.new
     @home_page.load
  end
  scenario 'navigation items' do
    expect(@home_page.nav_bar.list[0].text).to eql 'Home'
    expect(@home_page.nav_bar.list[1].text).to eql 'Hotels'
    expect(@home_page.nav_bar.list[2].text).to eql 'Tours'
    expect(@home_page.nav_bar.list[3].text).to eql 'Flights'
    expect(@home_page.nav_bar.list[4].text).to eql 'Cars'
    expect(@home_page.nav_bar.list[5].text).to eql 'Offers'
    expect(@home_page.nav_bar.list[6].text).to eql 'Blog'
    expect(@home_page.nav_bar.list[7].text).to eql 'My Account'
  end

  scenario 'search tabs' do
    expect(@home_page.search_tab.list_of_tabs[0].text).to eql 'Hotels'
    expect(@home_page.search_tab.list_of_tabs[1].text).to eql 'Flights'
    expect(@home_page.search_tab.list_of_tabs[2].text).to eql 'Tours'
    expect(@home_page.search_tab.list_of_tabs[3].text).to eql 'Cars'
  end
end
