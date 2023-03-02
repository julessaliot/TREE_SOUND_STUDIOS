Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"
  get "/my-bookings", to: "pages#my_bookings"
  get "/my-studios", to: "pages#my_studios"

  resources :studios do
    resources :bookings, only: %i[new create]
    member do
      get :booking_confirmation
    end
   end
    resources :bookings, only: %i[destroy edit update show]
    get 'search', to: 'studios#search'
  end
  
  

