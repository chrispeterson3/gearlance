class ChargesController < ApplicationController
  def new

  end

  def create
    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here https://manage.stripe.com/account

    # Get the credit card details submitted by the form
    token = params[:stripeToken]

    reservation = Reservation.find(params[:reservation_id])

    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => reservation.estimate * 100, # amount in cents, again
        :currency => "usd",
        :card => token,
        :description => "Item Owner: #{reservation.user.first_name} #{reservation.user.last_name} - #{reservation.user.email}, Item: #{reservation.item.name}"
      )
      
      reserve_item = Item.find(reservation)
      reserve_item.reserved = true
      reserve_item.save

      redirect_to reservation, notice: "Your payment has been successfully processed!"
    rescue Stripe::CardError => e
      # The card has been declined
      redirect_to reservation, notice: "Your payment has failed."
    end

  end
end
