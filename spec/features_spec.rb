require_relative '../simple_app.rb'
require 'spec_helper.rb'

describe 'google search page', :js => true do 
  it "should search the google for something" do
    visit 'http://google.com'
    fill_in("gbqfq", :with => "Flatiron School")
    sleep 2
    click_button("gbqfb")
    sleep 2
  end
end

describe 'youtube search page', :js => true do 
  it "should search youtube for maru" do
    visit 'http://www.youtube.com/'
    fill_in("masthead-search-term", :with => "mugumogu")
    sleep 2
    click_button("search-btn")
    sleep 2
    page.should have_content("maru")
  end
end