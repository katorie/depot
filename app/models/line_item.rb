class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  attr_accessible :product, :product_id, :quantity, :cart_id, :id
end
