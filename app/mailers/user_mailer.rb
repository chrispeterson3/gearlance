class UserMailer < ActionMailer::Base
  default from: "gearlanceapp@gmail.com"

  def welcome_email(user)
    @user = user
    @url = "http://localhost:3000/session/new"
    mail(to: user.email, subject: "Welcome to Gearlance!")
  end

  def reservation_request(reservation)
    @reservation = reservation
    @url = "http://localhost:3000/session/new"
    mail(to: user.email, subject: "Someone wants to rent your gear!")
  end
end
