Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    member do
      get 'my_services'
      get 'my_bookings'
    end
  end
  resources :services do
    resources :bookings, only:[:new, :create]
  end
  resources :bookings do
    resources :reviews
  end
end
