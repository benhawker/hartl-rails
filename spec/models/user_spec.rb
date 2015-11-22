require 'rails_helper'

describe User do
	before { @user = User.new(name: "Exmaple User", email: "user@example.com") }
	subject { @user }

	it { should respond_to(:name) }
	it {should respond_to(:email) }

	describe "when name is too long" do
		before { @user.name = "a"  * 51 }
		it { should_not be_valid }
	end 

	describe "when email address is already taken" do
		before do
			user_with_same_email = @user.dup 
			user_with_same_email.save	
		end

		it { should_not be_valid }
	end

end