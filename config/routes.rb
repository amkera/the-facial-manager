Rails.application.routes.draw do

  devise_for :estheticians, controllers: {omniauth_callbacks: 'omniauth'}

  resources :clients
  resources :facials

  root 'clients#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
