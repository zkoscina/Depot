class StoreController < ApplicationController
  def index
	 @products = Product.order(:tittle) #lista ordenada de productos perteneciente a la clase Store.
	 @time = Time.now
  end
end
