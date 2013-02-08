class UserSignup < ActionMailer::Base
  default from: "getwellbe@gmail.com"

    def notification
     mail(:to => "brianambielli2007@u.northwestern.edu, bambielli@gmail.com, brian.ambielli@gmail.com", :subject => "Someone Just signed up for Wellbe")
  end
end
