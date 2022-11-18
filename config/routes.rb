Rails.application.routes.draw do
  get 'pages/splash_screen'
  devise_for :users
  resources :group_expenditures
  resources :groups
  resources :expenditures
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
