Rails.application.routes.draw do
  root 'flights#home'
  get '/search', to: 'flights#search'
  resources :bookings, only: [:new, :create, :show]
end
