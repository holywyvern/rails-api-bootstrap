require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users, path: 'api/v1/users', controllers: {
    confirmations: 'v1/jwt/confirmations',
    passwords: 'v1/jwt/passwords',
    registrations: 'v1/jwt/registrations',
    sessions: 'v1/jwt/sessions',
    unlocks: 'v1/jwt/unlocks'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Sidekiq::Web => '/sidekiq'

  api_version(module: 'V1', path: { value: 'api/v1' }) do
    # TODO: Add your application routes here
  end
end
