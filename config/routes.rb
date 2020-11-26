Rails.application.routes.draw do
  resources :salesreps
  resources :activities
  resources :prospects
  resources :managers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
