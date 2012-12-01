class CreateComercios < ActiveRecord::Migration
  def change
    create_table :comercios do |t|
      t.string :name
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
