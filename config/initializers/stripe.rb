if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_2Pk3sTqjZCaMF2ec22fnGvCQ', 
    secret_key: 'sk_test_PUNoO9h6u4fsGNV91BaHyQ0P'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]