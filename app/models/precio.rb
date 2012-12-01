class Precio < ActiveRecord::Base
  attr_protected :id
  
  has_and_belongs_to_many :comercio
  has_and_belongs_to_many :producto
  
  def self.comercio_ids
    @comercio_ids = Comercio.all().map{|r| [r.name, r.id]}
  end
  
  def self.producto_ids
    @producto_ids = Producto.all().map{|r| [r.name, r.id]}
  end
end
