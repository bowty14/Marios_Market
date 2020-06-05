Rails.application.routes.draw do
  root to: 'pages#index'
  resources :products do
    resources :reviews
  end
  resources :pages

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
