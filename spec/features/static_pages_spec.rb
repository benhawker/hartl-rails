require 'rails_helper'

describe "StaticPages" do

  describe "Home page" do
    it "displays Sample app" do
      visit static_pages_home_path
      expect(page).to have_content('Sample App')
      expect(page).to have_selector('h1', :text => 'Sample App')
    end

    it "has the correct title" do
      visit static_pages_home_path
      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial | Home")
    end
  end

  describe "Help Page" do
  	it "displays Help" do
  		visit static_pages_help_path
  		expect(page).to have_content('Help')
      expect(page).to have_selector('h1', :text => 'Help')
  	end

    it "has the correct title" do
      visit static_pages_help_path
      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial | Home")
    end
  end

  describe "About Page" do
    it "displays About" do
      visit static_pages_about_path
      expect(page).to have_content('About')
      expect(page).to have_selector('h1', :text => 'About')
    end

    it "has the correct title" do
      visit static_pages_about_path
      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial | Home")
    end
  end
end
