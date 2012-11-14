require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Example App'" do
      visit root_path
      page.should have_content('Example App')
    end
    it "should have the right title" do
      visit root_path
      page.should have_selector('title',:text => "Ruby on Rails Tutorial Sample App")
    end
  end
  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
  end
  describe "About page" do
    it "should have the content 'Help'" do
      visit about_path
      page.should have_content('About')
    end
  end
end


