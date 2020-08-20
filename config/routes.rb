Rails.application.routes.draw do
  root to: 'pages#home'

  get 'login', to: 'sessions#login', as: 'login'
  post "/login", to: "sessions#process_login"
  delete 'logout', to: 'sessions#logout', as: 'logout'

  get 'signup', to: 'users#new', as: 'signup'

  resources :users, except: [:new]
  resources :auditions, only: [:new, :create]
  resources :jobs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# get '/login', to: "sessions#login"
#   post "/login", to: "sessions#process_login"
#   delete "/logout", to: "sessions#logout"