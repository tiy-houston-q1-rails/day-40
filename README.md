Day 40 - Intro to ecommerce
===============

Quiz:
----

We do not want to store decimals for money, because computers. Complete the
Rails class Product in the "money" rails app such that:

1. validates price is postive
2. defines both `price=` and `price`
3. Only stores `price_in_cents`

There is a test for Product, so you can make sure it works by running `rake`

Notes: [Rails Guides Validations](http://guides.rubyonrails.org/active_record_validations.html#numericality)

Today
-----

1. [Stripe API](https://stripe.com/docs/api#intro)
2. [Http.rb gem](https://github.com/httprb/http.rb)
3. REST Server
4. [Payola Gem](https://github.com/peterkeen/payola)
5. Sending emails
6. Stripe checkout (maybe)

Homework
--------

1. Create a Rails app with a Product (use the proper money method of price and
price=)
2. Seed your Products with some products you want to sell
3. Use the payola gem to sell a product (it adds a buy now button)
4. Get live on heroku, using the test stripe keys
