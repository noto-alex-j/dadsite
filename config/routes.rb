Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'orders#new'

  namespace :admin do
  #   resources :orders
    resources :items
  end

  resources :orders
end
