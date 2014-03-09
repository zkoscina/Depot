class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :tittle
      t.text :description
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
  end
end
