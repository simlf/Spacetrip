Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :ships, only: [:show] do
    resources :bookings, only: [:create, :new]
  end

  resources :bookings, only: [:index]

  # Accept / refuse request bookings
  # As an owner, I can see / accept / refuse all the pending bookings for my ships
  # --[PATCH owner/bookings/booking_id/accept]
  # -- [PATCH owner/bookings/booking_id/refuse]--

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
