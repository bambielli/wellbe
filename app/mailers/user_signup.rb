class UserSignup < ActionMailer::Base
  default from: "getwellbe@gmail.com"

    def notification
     mail(:to => "brianambielli2007@u.northwestern.edu, anolan2013@kellogg.northwestern.edu, sjani2013@kellogg.northwestern.edu", :subject => "Someone Just signed up for Wellbe")
  end
end
