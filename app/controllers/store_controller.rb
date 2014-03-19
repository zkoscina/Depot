class StoreController < ApplicationController
  def index #definiendo el metodo index
	 @products = Product.order(:tittle) #defino como variable una lista ordenadas de productos alfabeticamente según el titulo. 
	 #notar que el metodo order no está definido, por tanto que está por defecto.
	 @time = Time.now #defino una variable con la hora actual
  end
end
