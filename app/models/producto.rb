class Producto < ActiveRecord::Base
  attr_protected :id
  
  belongs_to :comercio
  has_many :precios
  
  searchable do
  	text :name
 	end
end
