class SearchController < ApplicationController
  def index
  end
  
  def product_search
  	search = Producto.search do
  		fulltext params[:query]
  	end
  	
  	render :json => search.results
  end
end
