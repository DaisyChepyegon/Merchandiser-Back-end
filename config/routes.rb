Rails.application.routes.draw do
  resources :route_plans
  resources :outlets
  resources :managers
  resources :merchandisers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
