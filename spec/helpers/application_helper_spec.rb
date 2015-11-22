require 'rails_helper'

describe ApplicatonHelper do

	describe "full_title" do
		xit "includes the page title" do
			expect(full_title("foo")).to eq /foo/
		end

		xit "includes the base title" do
			expect(full_title("foo")).to eq /^Ruby on Rails Tutorial/
		end

		xit "does not include a bar for the homepage" do
			expect(full_title("")).to eq /\|/
		end
	end

end