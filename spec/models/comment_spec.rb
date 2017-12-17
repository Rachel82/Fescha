require 'rails_helper'

describe Comment do

	context "validations" do

		it "is not valid without text, user_id, rating, product" do
		expect(Comment.new(body: "")).not_to be_valid
		expect(Comment.new(user_id: "")).not_to be_valid
		expect(Comment.new(rating: "")).not_to be_valid
		expect(Comment.new(rating: "star")).not_to be_valid
		expect(Comment.new(product_id: "")).not_to be_valid

		end
	end
end