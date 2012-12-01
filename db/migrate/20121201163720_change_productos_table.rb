class ChangeProductosTable < ActiveRecord::Migration
  def up
  	remove_column :productos, :price
  	remove_column :productos, :comercio_id
  end

  def down
  end
end
