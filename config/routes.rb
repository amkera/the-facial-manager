Rails.application.routes.draw do

  devise_for :estheticians, controllers: {omniauth_callbacks: 'omniauth'}

  resources :clients

  get '/estheticians', to: 'estheticians#index'

  resources :estheticians, only: [:show] do
    resources :facials, only: [:show, :index, :new, :edit]
  end

  #Gives access to /estheticians/:esthetician_id/facials/new,
  #and a new_esthetician_facial_path helper.

  resources :facials

  root "application#welcome"


end
