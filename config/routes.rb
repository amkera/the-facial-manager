Rails.application.routes.draw do

  get '/most_popular', to: 'esthetcians#most_popular'

  devise_for :estheticians, controllers: {omniauth_callbacks: 'omniauth'}

  resources :clients

  resources :estheticians, only: [:show] do
    resources :facials, only: [:show, :index, :new, :edit]
  end

  #Gives access to /estheticians/:esthetician_id/facials/new,
  #and a new_esthetician_facial_path helper.

  resources :facials

  root "application#welcome"




end
