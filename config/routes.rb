Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'dashboard' => "dashboards#dashboard"
  resources :gardens, only: [:index, :edit, :show, :new, :create, :destroy] do
  	resources :bookings, only: [:create, :show] do
  		member do
	  		patch 'accept', to: "bookings#accept"
	  		patch 'reject', to: "bookings#reject"
	  	end
  	end

  end
  root to: 'pages#home'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
