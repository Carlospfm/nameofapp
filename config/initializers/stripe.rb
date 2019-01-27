if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_02KYc6BMeNEiwZ15cbU5vFHM', 
    secret_key: 'sk_test_mfBWI5d5TIJAp68PSR7SzdC6'  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]