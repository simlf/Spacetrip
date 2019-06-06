Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :ships, only: [:show, :index] do
    resources :bookings, only: [:create, :new]
  end

  resources :bookings, only: [:index]

  namespace :owner do
    resources :ships, only: [:index, :new, :create]
    resources :bookings, only: [:index] do
      member do
        patch 'accept'
        patch 'refuse'
      end
    end
  end

end
