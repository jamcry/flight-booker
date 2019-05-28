Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/show'
  root 'flights#index'
  resources :flights
  resources :bookings
end
