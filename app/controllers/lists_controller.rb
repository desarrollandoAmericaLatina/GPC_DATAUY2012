class ListsController < ApplicationController
  def index
  end
  
  def calculate
  	list = [0,1]
  	
  	markets = Comercio.all
  	prices = []
  	
  	markets.each do |market|
  		total = []
  		list.each do |producto|
  			price = Precio.where("producto_id = ?", producto).first
  			total.push price.price
  		end
  		
  		prices.push total
  	end
  	
  	render :json => prices
  end
end
