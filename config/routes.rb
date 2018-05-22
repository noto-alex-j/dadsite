Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'orders#new'

  namespace :admin do
    resources :orders
    resources :items
  end

  resources :orders
end
