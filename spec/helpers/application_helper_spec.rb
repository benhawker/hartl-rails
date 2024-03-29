require 'rails_helper'

describe ApplicationHelper do

	describe "full_title" do
		it "includes the page title" do
			expect(full_title("foo")).to match(/foo/)
		end

		it "includes the base title" do
			expect(full_title("foo")).to match(/^Ruby on Rails Tutorial/)
		end

		it "does not include a bar for the homepage" do
			expect(full_title("")).not_to match(/\|/)
		end
	end

end