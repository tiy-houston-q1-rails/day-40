class ChargesController < ApplicationController

  def create

    @product = Product.find params[:product_id]

    require "stripe"
    Stripe.api_key = ENV["STRIPE_SECRET_KEY"]

    charge = Stripe::Charge.create( {
        amount: @product.price_in_cents,
        currency: "usd",
        source: params["stripeToken"],
        description: @product.name}
    )

    if charge["status"] == "succeeded"
      redirect_to root_path
    else
      redirect_back
    end
  end
end
