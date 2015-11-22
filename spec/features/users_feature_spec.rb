require 'rails_helper'

describe "User pages" do

  describe "Home page" do
    it "displays Sample app" do
      visit user_new_path
      expect(page).to have_selector('h1', text: 'Users')
    end
  end


end
