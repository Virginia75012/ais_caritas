Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'owner', to: 'pages#owner'
  get 'about', to: 'pages#about'
  get 'mission', to: 'pages#mission'
  resources :flats, only: [:new, :create, :edit, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flats
  resources :simulations, only: [:new]
end
