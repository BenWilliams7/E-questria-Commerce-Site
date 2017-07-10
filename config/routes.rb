Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
       registrations: 'users/registrations',
       sessions: 'users/sessions'
     }

  resources :users do
    resources :accounts
  end

  # resources :accounts do
  #   resources :orders
  # end

  # resources :orders do
  #   resources :order_items
  # end

  resources :products

  resources :order_items

  resource :cart, only: [:show]

  resources :home
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
