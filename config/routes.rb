Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'dashboard' => "dashboards#dashboard"

  resources :users, only: [:edit, :show]
  resources :gardens, only: [:index, :edit, :show, :new, :create]
  root to: 'pages#home'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
