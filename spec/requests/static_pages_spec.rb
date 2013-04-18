require 'spec_helper'

describe "Static pages" do
  
  include Capybara::DSL
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  
   subject { page }

   describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit  '/home'
      page.should have_selector('h1', :text => 'Sample App') 
      page.should have_selector('title', :text => full_title(''))
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/help'
      page.should have_selector('h1', :text => 'Help')
      page.should have_selector('title', :text => full_title(''))
    end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/about'
      page.should have_selector('h1', :text => 'About Us')
      page.should have_selector('title', :text => full_title(''))
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit '/contact'
      page.should have_selector('h1', :text => 'Contact')
      page.should have_selector('title', :text => full_title(''))
    end
  end

end

