class StaticPagesController < ApplicationController
  
  def index
  end

  def about
  end

  def contact
  	def thank_you
  		@name = params[:name]
  		@email = params[:email]
  		@message = params[:message]
  		ActionMailer::Base.mail(from: @email,
      to: 'akilimali82@hotmail.fr',
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
			end
  end

  def landing_page
  		@products = Product.limit(3)
  end


end
