class NoPay < ActionMailer::Base
  default from: "getwellbe@gmail.com"

  def nopayNotification
  	mail(:to => "brianambielli2007@u.northwestern.edu, anolan2013@kellogg.northwestern.edu, sjani2013@kellogg.northwestern.edu", :subject => "Someone just signed up on NOPAY site")
end
end

