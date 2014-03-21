class LineItem < ActiveRecord::Base
  def total_price
    product.price * quantity
  end

  belongs_to :product
  belongs_to :cart

  attr_accessible :product, :product_id, :quantity, :cart_id, :id
end
