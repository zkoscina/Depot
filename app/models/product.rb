class Product < ActiveRecord::Base
validates :tittle, :description, :image_url, presence: true #todos los campos mandatorios
validates :price, numericality: {greater_than_or_equal_to: 0.01} #precio valido 
validates :tittle, uniqueness: true #los titulos no se pueden repetir

validates :image_url, allow_blank: true, format: { #el nombre del archivo debe tener extension adecuada
with: %r{\.(gif|jpg|png)\Z}i,
message: 'must be a URL for GIF, JPG or PNG image.'}
end
