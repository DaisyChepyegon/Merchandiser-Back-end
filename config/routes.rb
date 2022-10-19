Rails.application.routes.draw do
  resources :route_plans
  resources :outlets
  resources :managers
  resources :merchandisers

   post 'manager/login', to: 'managers_sessions#create'
   delete 'manager/logout', to: 'managers_sessions#destroy'
   get 'manager/logged_in', to: 'managers_sessions#is_logged_in?'
 
   ## merchandisers sessions routes
   post 'merchandiser/login', to: 'merchandisers_sessions#create'
   delete 'merchandiser/logout', to: 'merchandisers_sessions#destroy'
   get 'merchandiser/logged_in', to: 'merchandisers_sessions#is_logged_in?'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
