Rails.application.routes.draw do
  root to: 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    resources :users
  end

  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
