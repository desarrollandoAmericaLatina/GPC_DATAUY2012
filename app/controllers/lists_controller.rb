class ListsController < ApplicationController
  def index
  end
  
  def calculate
  	list = [1,3]
  	
  	markets = Comercio.all
  	prices = []
  	
  	markets.each do |market|
  		subtotal = []
  		list.each do |producto|
  			price = Precio.where("producto_id = ? AND comercio_id = ?", producto, market.id).first
  			subtotal.push price
  		end
  		
  		total = 0
  		subtotal.each do |price|
  			total = total + price
  		end
  		prices.push total
  	end
  	
  	render :json => prices
  end
end
