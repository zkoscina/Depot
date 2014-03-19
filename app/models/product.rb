class Product < ActiveRecord::Base
#estamos creando una clase que hereda los atributos de la clase Base definida en el modulo ActiveRecord.

has_many :line_items  #hago referencia a que un producto puede ser referenciado por varios itemes de carro

before_destroy :ensure_not_referenced_by_any_line_item #me aseguro de no poder destruir un producto si es que está referenciado

validates :tittle, :description, :image_url, presence: true #todos los campos mandatorios
validates :price, numericality: {greater_than_or_equal_to: 0.01} #precio valido 
validates :tittle, uniqueness: true #los titulos no se pueden repetir

validates :image_url, allow_blank: true, format: { #el nombre del archivo debe tener extension adecuada
with: %r{\.(gif|jpg|png)\Z}i,
message: 'must be a URL for GIF, JPG or PNG image.'}

def self.latest #se define un metodo de la clase (puede ser llamada por un objeto solo de la clase)
Product.order(:updated_at).last #se llama a un metodo order de la clase base de activerecord, que recibe como 
#parametro un simbolo que representa la hora de actualización y ordena en base a eso. Luego, a través del método last, busca
#el ultimo producto actualizado.
end

 private

    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end

end
