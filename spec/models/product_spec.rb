require 'rails_helper'

describe Product do 

  context 'when the product has comments' do

    before do
      @user = FactoryBot.build(:user)
      @product = FactoryBot.create(:product)
      #let (:product) {Product.create!(name:"Tshirt")}
      #let (:user) {User.create!(first_name: "Rachel", last_name:"Verell", email: "verell@hotmail.fr", password: "hiya23456")}
    end

    it "returns the average rating of all comments" do
      @product.comments.create!(rating: 1, user: @user, body: "Awful Tshirt!")
      @product.comments.create!(rating: 3, user: @user, body: "Ok Tshirt!")
      @product.comments.create!(rating: 5, user: @user, body: "Great Tshirt!")
      expect(@product.average_rating).to eq(3)
   end

		it "is not valid without a name" do
		expect(Product.new(description: "Nice T")).not_to be_valid
		end
	end
end


