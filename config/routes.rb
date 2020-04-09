Rails.application.routes.draw do
  root 'pages#home'
  get 'flights/new'
  get 'flights/create'
  get 'flights/index'
  get 'flights/show'
  get 'airports/create'
  resources :airports
  resources :flights 
end
