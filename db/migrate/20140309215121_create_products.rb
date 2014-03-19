class CreateProducts < ActiveRecord::Migration
	#estamos creando una clase que hereda los atributos de la clase Migration definida en el modulo ActiveRecord.
  
  def change #estamos definendo un metodo dentro de la clase CreateProducts
    create_table :products do |t| #a su vez se usa la función metodo (clase Migration) create_table pasandole el nombre
    	#products como un simbolo.|t| representa un bloque de objetos que es pasado al metodo
      t.string :tittle
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale:2

      t.timestamps
    end
  end
end
