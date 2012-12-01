GPC::Application.routes.draw do
  get "lists/index"

  root :to => 'home#index'
  match 'product-search/:query' => 'search#product_search'
  match 'calculate-list/:list' => 'lists#calculate'
end
