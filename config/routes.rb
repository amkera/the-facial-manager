Rails.application.routes.draw do

  devise_for :estheticians, controllers: {omniauth_callbacks: 'omniauth'}

  resources :clients
  resources :estheticians, only: [:show] do
    resources :posts, only: [:show, :index]
  end

  resources :facials

  get 'estheticians/:id/facials', to: 'estheticians#facials_index'
  get 'estheticians/:id/facials/:facial_id', to: 'estheticians#facial'

  root "application#welcome"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
