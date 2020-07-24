Rails.application.routes.draw do

  devise_for :estheticians, controllers: {omniauth_callbacks: 'omniauth'}

  resources :clients

  resources :estheticians, only: [:show] do
    resources :facials, only: [:show, :index]
  end

  resources :facials

  root "application#welcome"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
