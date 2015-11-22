require 'rails_helper'

describe "StaticPages" do

  describe "Home page" do
    it "displays Sample app" do
      visit static_pages_home_path
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help Page" do
  	it "displays Help" do
  		visit static_pages_help_path
  		expect(page).to have_content('Help')
  	end
  end

  describe "About Page" do
    it "displays About" do
      visit static_pages_about_path
      expect(page).to have_content('About')
    end
  end
end
