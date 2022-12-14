Rails.application.routes.draw do
  devise_for :users, sign_out_via: %i[get post]
  # Defines the root path route ("/")
  root to: 'pages#splash_screen'
  resources :groups do
    resources :expenditures
  end
  resources :expenditures
end
