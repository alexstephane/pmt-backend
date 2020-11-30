Rails.application.routes.draw do
  
   resources :managers
    resources :salesreps
    resources :activities
    resources :prospects
  
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


   namespace :api do
    namespace :v1 do
      
      
    
      #post "/signup", to: "managers#create"
      post '/login', to: 'auth#create'
      get '/managers/:username', to: 'managers#show'
      get '/managers/', to: 'managers#index'
     end
  end
end