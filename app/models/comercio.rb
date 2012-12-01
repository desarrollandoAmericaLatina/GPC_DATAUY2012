class Comercio < ActiveRecord::Base
  attr_protected :id
  
  before_save :set_coords
  
  has_many :products
  
  def set_coords
  	result = Geocoder.search(self.address)
  	
	  self.lat = result[0].latitude
	  self.long = result[0].longitude
  end
end
