ActionMailer::Base.smtp_settings = {
  :address  => "smtp.gmail.com",
  :port  => 587,
  :user_name  => 'getwellbe',
  :password  => 'Wellbeemail@12',
  :authentication  => :plain,
  :enable_starttls_auto => true
}