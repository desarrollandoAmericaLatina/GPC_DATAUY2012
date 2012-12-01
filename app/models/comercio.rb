class Comercio < ActiveRecord::Base
  attr_protected :id
  
  has_many :products
end
