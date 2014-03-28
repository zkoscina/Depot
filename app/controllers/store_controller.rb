class StoreController < ApplicationController
  def index #definiendo el metodo index
	 @products = Product.order(:tittle) #defino como variable una lista ordenadas de productos alfabeticamente según el titulo. 

  end
end
