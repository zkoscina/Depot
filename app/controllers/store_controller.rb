class StoreController < ApplicationController
	include CurrentCart
	include CurrentSession

  def index #definiendo el metodo index
	 @products = Product.order(:tittle) #defino como variable una lista ordenadas de productos alfabeticamente según el titulo. 
	 contar_visita
	 set_cart
	 mostrar_visita
  end

  		
end
