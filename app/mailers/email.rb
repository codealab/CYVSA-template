class Email < ActionMailer::Base

	def send_email(contact)
		mail(:to => Home.first.email, :subject => "hola", :from => contact.email)
	end
end
