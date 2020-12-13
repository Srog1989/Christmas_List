Rails.application.routes.draw do
  resources :presents
  resources :recipients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :presents 
  resources :recipients
  get '/signup', to: 'users#new'
	post '/signup', to: 'users#create'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
