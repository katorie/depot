class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  def total_price
    product.price * quantity
  end

  attr_accessible :product, :product_id, :quantity, :cart_id, :id
end
