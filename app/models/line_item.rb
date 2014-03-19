class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  attr_accessible :product, :produc_id, :quantity, :cart_id, :id
end
