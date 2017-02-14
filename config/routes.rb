Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [:edit, :show] do
    resources :gardens, only: [:new, :create]
  end

  resources :gardens, only: [:index, :edit, :show]
  root to: 'pages#home'
  resources :users do
  	resources :gardens, only: [:new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
