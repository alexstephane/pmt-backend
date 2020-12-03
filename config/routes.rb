


Rails.application.routes.draw do
  
  resources :managers
  resources :salesreps
  resources :activities
  resources :prospects
  
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # AUTH Routes   
  post '/login', to: 'auth#create'
  get '/managers/:username', to: 'managers#findbyUsername'
  get '/managers/', to: 'managers#index'
end