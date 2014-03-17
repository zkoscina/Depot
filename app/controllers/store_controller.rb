class StoreController < ApplicationController
  def index
	 @products = Product.order(:tittle) #lista ordenada de productos perteneciente a la clase Store.
  end
end
