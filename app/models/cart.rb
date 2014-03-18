class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy  #lo agregamos manual para mantener la relacion inversa,
	#la dependencia destroy dice que si destruyo un carro, destruyo también todos sus timtes.
end
