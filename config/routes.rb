Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :studios do
    resources :bookings, only: %i[new create]
  end
  get 'search', to: 'studios#search'
  resources :bookings, only: %i[index destroy edit update]
end
