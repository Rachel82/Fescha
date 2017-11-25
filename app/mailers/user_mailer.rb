class UserMailer < ApplicationMailer
	default from: "shop@fescha.at"

	def contact_form(email, name, message)
		@message = message
			mail(from: email,
				   to: 'akilimali82@hotmail.fr',
				   subject: "A new contact form message from #{name}")
		end
end
