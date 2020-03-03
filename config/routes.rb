Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'owner', to: 'pages#owner'
  get 'about', to: 'pages#about'
  get 'missions', to: 'pages#missions'
  get 'dashboard', to: 'pages#dashboard'

  resources :flats do
    member do
      patch :validate
    end
  end

  resources :simulations, only: [:new]
end
