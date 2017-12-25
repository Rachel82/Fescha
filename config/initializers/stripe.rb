if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_LNC3Law7jUTzFoc5pksKcO68',
    secret_key: 'sk_test_HBAYQaxmxgCtgncRAidQVzJG'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]