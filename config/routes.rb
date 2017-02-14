Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :gardens, only: [:index, :edit, :show, :new, :create] do
  	resources :bookings, only: [:create, :show]
  end

  root to: 'pages#home'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
