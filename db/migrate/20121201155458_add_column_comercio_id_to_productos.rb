class AddColumnComercioIdToProductos < ActiveRecord::Migration
  def change
  	add_column :productos, :comercio_id, :integer
  end
end
