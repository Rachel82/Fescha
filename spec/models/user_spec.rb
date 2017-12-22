require 'rails_helper'

describe User do

	context "validations" do
		@user = FactoryBot.build(:user, email: "not_an_email")
   	 expect(@user).to_not be_valid
		end
	end
