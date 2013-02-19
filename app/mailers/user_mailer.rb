class UserMailer < ActionMailer::Base
  default from: "getwellbe@gmail.com"
    def welcome_email(protocol, host, user)
    	@user = user
    	@protocol = protocol
    	@host = host
    	@url  = "http://example.com/login"
    	mail(:to => user.email, :subject => "Welcome to Wellbe")
  	end
end
