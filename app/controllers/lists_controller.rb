class ListsController < ApplicationController
  def index
  end
  
  def calculate
  	list = params[:list]
  	
  	markets = Comercio.all
  	prices = []
  	
  	markets.each do |market|
  		total = []
  		list.each do |producto|
  			price = Price.where("product_id = ?", producto)
  			total.push price.price
  		end
  		
  		prices.push total
  	end
  	
  	render :json => prices
  end
end
