require 'rails_helper'

describe User do

	context "validations" do

	it "is not valid without email address" do
		expect(User.new(first_name: "Rachel", last_name: "Verell", email: "", password: "hiya23456")).not_to be_valid
		end

	end
end