require 'spec_helper'

describe "User pages" do

  include Capybara::DSL
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }


   subject { page }

   describe "signup page" do
    it "should have the h1 'Sample App'" do
      visit  '/signup'
      page.should have_selector('h1', :text => 'Sign up')
      page.should have_selector('title', :text => full_title(''))
    end
  end

end

