require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "price must be present" do
    product = Product.new name: "MacBook Air"
    product.valid?
    assert product.errors[:price].any?, "Price should be present"
  end

  test "price must be positive" do
    product = Product.new name: "MacBook Air"
    product.price = -45
    product.valid?
    assert product.errors[:price].any?, "Price must be positive"
  end

  test "price converts decimals" do
    product = Product.new name: "MacBook Air"
    product.price = 45.50
    product.save
    assert_equal 45.50, product.price
  end

end
