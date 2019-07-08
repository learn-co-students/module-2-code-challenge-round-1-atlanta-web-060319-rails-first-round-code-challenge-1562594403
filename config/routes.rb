Rails.application.routes.draw do
  resources :powers
  resources :heroines 

  
  
  
  get '/index', to: "heroines#index"
  

end 
