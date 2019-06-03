Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :ships :only [:new, :create, :show] do
    resources :bookings :only [:create, :new]
  end

  resources :bookings :only [:index]

  namespace :owner do
    resources :ships :only [:index, :new, :create]
    resources :bookings :only [:index]
  end
end
