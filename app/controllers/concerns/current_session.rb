module CurrentSession
  extend ActiveSupport::Concern

  private #definiendo un metodo privado solo para la clase que lo contiene.
  
  def contar_visita
	if session[:counter].nil?
	session[:counter]=1
	else
	session[:counter]+=1
	end
  end	

  def mostrar_visita
     if session[:counter] > 5
      session[:welcome] = "esta es su visita número #{session[:counter]} y el id de su carro es #{session[:cart_id]}"
     else
      session[:welcome] = nil 
    end 
  end
end
