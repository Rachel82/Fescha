require 'rails_helper'
	describe ProductsController, type: :controller do #creates new
		let (:product) {Product.create!(name: 'Lola', description: 'Hellogfdbgddhfdghdhdfgdf', price:'50 Eur')}
		let (:user) {User.create!(first_name: 'Lola', last_name: 'Hello', email: 'lola@yahoo.fr', password: 'hiya23456')}

		describe 'GET #new:' do
			context 'when user is logged in' do
				before do
  				sign_in user
  			end
				it 'creates new product' do
					get :new
					expect(response).to be_successful
				end
			end
		end 
			describe 'GET #index' do
				context 'when page is loaded' do
    			it 'renders the index page' do 
      			get :index
      			expect(response).to be_ok
      			expect(response).to render_template('index')
      		#expect(assigned(:product).to expect(assigns(:product)).to be_a_new(Product)
    			end
  			end
  		end
  		describe 'Get #show' do
  			context 'loads individual product' do
  				it 'renders show page' do
  					get :show, params: {id: product}
      			expect(response).to be_ok
      			expect(response).to render_template('show')
					end
				end
			end

			describe 'Get #edit' do
				context 'when user logged in edits' do
					it 'renders '
		end

