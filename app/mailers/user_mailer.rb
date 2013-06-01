class UserMailer < ActionMailer::Base
  default from: "gearlance.com"

  def welcome_email(user)
    @user = user
    @url = "http://localhost:3000/session/new"
    mail(to: user.email, subject: "Welcome to Gearlance!")
  end
end
