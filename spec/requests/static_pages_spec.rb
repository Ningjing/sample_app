require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_page/home'
      page.should have_content('Sample App')
    end

    it "should have the base title" do
    	visit '/static_page/home'
    	page.should have_selector('title', :text => "Ruby on Rails Tutorial")
    end
  end
end
