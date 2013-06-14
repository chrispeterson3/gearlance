Rails.configuration.stripe = {
  :publishable_key => ENV['GEARLANCE_PUBLISHABLE_KEY'],
  :secret_key      => ENV['GEARLANCE_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]