class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart  #lo agregue manaul porque rails no lo hizo automaticamente
end
