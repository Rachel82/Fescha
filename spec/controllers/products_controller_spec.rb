
require 'rails_helper'
	describe ProductsController, type: :controller do 
<<<<<<< HEAD

		let (:product) {Product.create!(name: 'Lola', description: 'Hellogfdbgddhfdghdhdfgdf', price:'50 Eur')}
		let (:user) {User.create!(first_name: 'Hava', last_name: 'Hello', email: 'lola@yahoo.fr', password: 'hiya23456')}
		let (:admin) {User.create!(first_name: 'Hav', last_name: 'Hell', email: 'loa@yahoo.fr', password: 'ya23456')}

#===================NEW===================================================================
	describe 'GET #new:' do
		context 'when user is logged in' do
			before do
				sign_in user
			end
			it 'creates new product' do
				get :new
        expect(assigns(:product)).to be_a_new(Product)
				expect(response).to be_successful
			end
		end
	end 
#===================CREATE===================================================================

	describe 'Post #create' do
		context 'when user is logged in ' do
			before do 
				sign_in user
			end
				it 'creates new product ' do
					post :create, params: {product: { name: 'Tshirt', description: '', image_url: '', price: ''}}
					expect(Product.count).to eq 1
					expect(flash[:notice]).to eq "Product was successfully created."
				end
			end
		context 'when user is logged out ' do
			before do 
				sign_out user
			end
				it 'cannot create new product ' do
					post :create, params: {product: { name: 'Tshirt', description: '', image_url: '', price: ''}}
					expect(flash[:alert]).to eq 'You need to sign in or sign up before continuing.'
					expect(response).to redirect_to('/users/sign_in')
				end
			end
		end
#===================INDEX===================================================================

	describe 'GET #index' do
		context 'when page is loaded' do
			it 'renders the index page' do 
  			get :index
  			expect(response).to be_ok
  			expect(response).to render_template('index')
			end
		end
	end
#===================SHOW===================================================================

	describe 'Get #show' do
		context 'loads individual product' do
			it 'renders show page' do
				get :show, params: {id: product}
  			expect(response).to be_ok
  			expect(response).to render_template('show')
			end
		end
	end

#===================EDIT===================================================================

	describe 'Get #edit' do
		context 'when user is logged in ' do
			before do 
				sign_in user
			end
			it 'access to edit ' do
				get :edit, params: {id: product}
				expect(response).to be_ok
				#expect(flash[:notice]).to eq 'Product was successfully updated.'
				expect(response).to render_template('products/edit')
			end
		end
	
		context 'when user is not logged in ' do
			before do 
				sign_out user
			end
			it 'cannot access #edit ' do
				get :edit, params: {id: product}
				expect(response).not_to be_ok
				expect(response).to redirect_to('/users/sign_in')
			end
		end
	end
#===================UPDATE===================================================================

	describe 'Patch #update' do
		context 'when user is logged in ' do
				let (:user) {User.create!(first_name: 'Hava', last_name: 'Hello', email: 'lola@yahoo.fr', password: 'hiya23456')}
				let (:product) {Product.create!(name: 'Lola', description: 'Hellogfdbgddhfdghdhdfgdf', price:'50 Eur')}
		
			before do 
				sign_in user
			end

			it 'update product' do
				patch :update, params: {id: product.id, product: {name: 'T'}}
				expect(Product.where("id = ?", product.id).first.name).to eq "T"
				expect(flash[:notice]).to eq 'Product was successfully updated.'
				expect(response).to redirect_to product_path
			end
		end
		context 'when user is not logged in ' do
			before do 
				sign_out user
			end
			it 'cannot update product' do
				patch :update, params: {id: product.id, product: {name: 'T'}}
				expect(response).not_to be_ok
				expect(flash[:alert]).to eq 'You need to sign in or sign up before continuing.'
				expect(response).to redirect_to('/users/sign_in')
			end
		end
	end

#===================DELETE===================================================================
=======

		#let (:product) {Product.create!(name: 'Lola', description: 'Hellogfdbgddhfdghdhdfgdf', price:'50 Eur')}
		#let (:user) {User.create!(first_name: 'Hava', last_name: 'Hello', email: 'lola@yahoo.fr', password: 'hiya23456')}
		#let (:admin) {User.create!(first_name: 'Hav', last_name: 'Hell', email: 'loa@yahoo.fr', password: 'ya23456')}
		before do
		@product = FactoryBot.create(:product)
		#@product1 = FactoryBot.create (:product, name: 'l', description: 'great', colour: 'blue', price: '50 Eur')
		@user = FactoryBot.create(:user)
		@admin = FactoryBot.create(:admin)
		end
#===================NEW===================================================================
	describe 'GET #new:' do
		context 'when user is logged in' do
			before do
				sign_in @user
			end
			it 'renders the new product template' do
        get :new
        expect(response).to be_successful
      end
		end
	end 
#===================CREATE===================================================================

 	context 'Post #create' do
 		context 'when user is logged in ' do
 			before do 
 				sign_in @user
 			end
 				it 'creates new product ' do
 					before = Product.all.length
 					@product = FactoryBot.create(:product)
 					after = Product.all.length
 					expect(after).to eq (before + 1)
 				end
 			end
 		end
 	
 #===================INDEX===================================================================

 	describe 'GET #index' do
 		context 'when page is loaded' do
 			it 'renders the index page' do 
   			get :index
   			expect(response).to be_ok
   			expect(response).to render_template('index')
 			end
 		end
 	end
 #===================SHOW===================================================================

 	describe 'Get #show' do
 		context 'loads individual product' do
 			it 'renders show page' do
 				subject {get :show, params: {id: @product.id}}
   			expect(response).to be_ok
   			expect(response.status).to eq 200
 			end
 		end
 	end
 #===================EDIT===================================================================

 	describe 'Get #edit' do
 		context 'when user is logged in ' do
 			before do 
 				sign_in @user
 			end
 			it 'access to edit ' do
 				get :edit, params: {id: @product}
 				expect(response).to be_ok
 				expect(response).to render_template('products/edit')
 			end
 		end
	
 		context 'when user is not logged in ' do
 			before do 
 				sign_out @user
 			end
 			it 'cannot access #edit ' do
 				get :edit, params: {id: @product}
 				expect(response).not_to be_ok
 				expect(response).to redirect_to('/users/sign_in')
 			end
 		end
 	end
 #===================UPDATE===================================================================

 	describe 'Patch #update' do
 		context 'when user is logged in ' do
 			@product = FactoryBot.create(:product)
 			@user = FactoryBot.build(:user)

 			before do 
 				sign_in @user
 			end

 			it 'update product' do
 				patch :update, params: {id: @product.id, product: {name: 'anything'}}
 				expect(Product.where("id = ?", @product.id).first.name).to eq "anything"
 				expect(flash[:notice]).to eq 'Product was successfully updated.'
 				expect(response).to redirect_to product_path
 			end
 		end
 		context 'when user is not logged in ' do
 			before do 
 				sign_out @user
 			end
 			it 'cannot update product' do
 				patch :update, params: {id: @product.id, product: {name: 'anything'}}
 				expect(response).not_to be_ok
 				expect(flash[:alert]).to eq 'You need to sign in or sign up before continuing.'
 				expect(response).to redirect_to('/users/sign_in')
 			end
 		end
 	end

 #===================DELETE===================================================================

 	describe 'Delete #destroy' do
 		context 'when user admin is logged in ' do
 			before do 
 				sign_in @admin
 			end
 			it 'destroys product'	do
 					before = Product.all.length
 					delete :destroy, params: {id: @product.id }
 					after = Product.all.length
 					expect(after).to eq (before - 1)
 			end
 		end
 	end
end
>>>>>>> specs

	describe 'Delete #destroy' do
		context 'when user admin is logged in ' do
			before do 
				sign_in admin
			end
			it 'destroys product'	do
				delete :destroy, params: {id: product.id}
				expect(flash[:notice]).to eq "Product was successfully destroyed."
				expect(Product.where("id = ?", product.id)).not_to exist
				expect(Product.count).to eq 0
			end
		end
	end
end