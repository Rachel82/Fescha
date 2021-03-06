require 'rails_helper'

describe UsersController, type: :controller do
	
	#let (:other_user) {User.create!(first_name: 'Usher', last_name: 'Lo', email: 'la@yahoo.fr', password: 'hoya23456')}
  #let (:user) {User.create!(first_name: 'Lola', last_name: 'Hello', email: 'lola@yahoo.fr', password: 'hiya23456')}
  before do
	 @user = FactoryBot.create(:user)
    @user1 = FactoryBot.create(:user)
  end

	describe 'GET #show:' do
		context 'when a user is logged in' do
			before do
				sign_in @user
			end
		  it 'loads correct user details' do
        get :show, params: { id: @user.id }
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user
      end
    end
		context 'when a user is not logged in' do
			it 'redirects to landing_page' do
				get :show, params: {id: @user.id}
				expect(response).to redirect_to('/')
		  end
    end
		context "User cannot see other user page" do
      before do
        sign_in @user
      end
      it "redirect to root path" do
        get :show, params: { id: @user1.id }
        expect(response).to redirect_to(root_path)
      end
		end
	end
end





 # =======================================================================