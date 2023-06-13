Rails.application.routes.draw do
  resources :users
  resources :goat_treatments
  resources :treatments
  resources :breeds
  resources :goats do
    resources :breeds
  end
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
