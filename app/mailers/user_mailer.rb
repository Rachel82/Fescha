class UserMailer < ApplicationMailer
	default from: "shop@fescha.at"

		def contact_form(params)
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    mail(:to => 'akilimali82@hotmail.fr', :subject => "New Message!")
  end

  def welcome(user)
  @appname = "Fescha"
  mail(to: user.email,
       subject: "Welcome to #{@Fescha}!")
	end
	
end
