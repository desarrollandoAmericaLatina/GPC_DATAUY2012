class ListsController < ApplicationController
  def index
  end
  
  # recibe un array como parametro con las IDs de los productos a comprar
  # y devuelve el supermercado con mejores precios de acuerdo a
  # la lista de esos productos
  def calculate
  	list_of_products = params[:list]
  	
  	markets = Comercio.all
  	
  	products = []
  	result = {}
  	
  	markets.each do |market|
  		products = Precio.where(:producto_id => list_of_products).where("comercio_id = ?", market.id)
  		result[market.id] = 0
  		products.each do |product|
  			result[market.id] += product.price
  		end
  	end

  	key, value = result.sort{|a,b| a[1] <=> b[1]}.first
  	best_market = Comercio.find(key)

  	render :json => best_market
  end
end
