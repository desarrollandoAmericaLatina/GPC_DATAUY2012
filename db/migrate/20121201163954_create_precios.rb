class CreatePrecios < ActiveRecord::Migration
  def change
    create_table :precios do |t|
      t.integer :producto_id
      t.integer :comercio_id
      t.integer :price

      t.timestamps
    end
  end
end
