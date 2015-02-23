# Step 0: gem install stripe

require 'securerandom'

# Step 1: convert a card to a token

require "stripe"
Stripe.api_key = "SECRET_KEY_GOES_HERE"

token = Stripe::Token.create(
  :card => {
    :number => "4242424242424242",
    :exp_month => 2,
    :exp_year => 2016,
    :cvc => "314"
  },
)

token_id = token["id"]

puts "token_id: #{token_id}"


# Step 2: Charging the token

key = SecureRandom.hex

5.times do
  Stripe::Charge.create( {
      amount: 2000000,
      currency: "usd",
      source: token_id,
      description: "Twenty Macbooks"},
      { idempotency_key: key }
  )
end



# charge = Stripe::Charge.create({
#   :amount => 400,
#   :currency => "usd",
#   :source => "tok_15ZOw2CnWmWD2X92O4BTW7MY", # obtained with Stripe.js
#   :description => "Charge for test@example.com"
# }, {
#   :idempotency_key => "zlpih6ShJJV0W2qc"
# })
