class ListsController < ApplicationController
  def index
  end
  
  def calculate
  	list = [1]
  	
  	markets = Comercio.all
  	prices = []
  	
  	markets.each do |market|
  		total = []
  		list.each do |producto|
  			price = Precio.where("producto_id = ? AND comercio_id = ?", producto, market.id).first
  			total.push price
  		end
  		
  		prices.push total
  	end
  	
  	render :json => prices
  end
end
