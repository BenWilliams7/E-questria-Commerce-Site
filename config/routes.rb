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

  resources :products do
    resources :order_items
  end

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
