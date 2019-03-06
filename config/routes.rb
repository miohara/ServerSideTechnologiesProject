Rails.application.routes.draw do
  get 'cart/index'
  resources :items
  root 'static_pages#home'
  
  
  get '/about' =>'static_pages#about'
  get '/help' =>'static_pages#help'
  
  get '/login' => 'user#login'
  
  get '/logout' => 'user#logout'
  
  get '/cart/:id' => 'cart#add'
  
  
  
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
