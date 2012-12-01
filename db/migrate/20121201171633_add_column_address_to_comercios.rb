class AddColumnAddressToComercios < ActiveRecord::Migration
  def change
  	add_column :comercios, :address, :string
  end
end
