class Product < ActiveRecord::Base

  validates :price, numericality: { greater_than: 0 }

  def price=(other)
    self.price_in_cents = other * 100.0
  end

  def price
    price_in_cents / 100.0
  end
end
