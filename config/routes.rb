Rails.application.routes.draw do
  resources :guitarcats
  resources :categories
  resources :profiles
  get 'orderitems/index'
  get 'orderitems/show'
  get 'orderitems/new'
  get 'orderitems/edit'
  
  
  
  resources :orders do
    resources:orderitems
  end
  
  
  
  
  
  
  
  devise_for :users do
    resources:orders
  end
    
    post '/search' => 'items#search'
    
    
    get '/checkout' => 'cart#createOrder'
  
  
  get 'cart/index'
  resources :items
  root 'static_pages#home'
  
  
  get '/about' =>'static_pages#about'
  get '/help' =>'static_pages#help'
  
  get '/login' => 'user#login'
  
  get '/logout' => 'user#logout'
  
  get '/cart/clear' => 'cart#clearCart'
  
  get '/cart/:id' => 'cart#add'
  
  get '/cart/remove/:id' => 'cart#remove'
  
  get '/cart/decrease/:id' => 'cart#decrease'
  
  get '/paid/:id' => 'static_pages#paid'
  
  get '/category/:title' => 'static_pages#category'
  
  get '/cart' => 'cart#index'
  

  
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
