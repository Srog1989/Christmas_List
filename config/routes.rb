Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :presents 
  resources :recipients
  resources :users
  root 'users#home'
  get '/signup', to: 'users#new'
	post '/signup', to: 'users#create'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
