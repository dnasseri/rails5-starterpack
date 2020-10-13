Rails.application.routes.draw do
  require 'sidekiq/web'

  # User authentication routes provided by Devise
  devise_for :users

  # Sidekiq web interface
  mount Sidekiq::Web => '/sidekiq'

  namespace :api do
    resources :users, only: [:index, :show]
  end
end
