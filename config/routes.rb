Rails.application.routes.draw do
  root 'flights#index'
  get 'about', to: 'static_pages#about'
  get 'bookings/new'
  get 'bookings/show'
  
  resources :flights
  resources :bookings
end
