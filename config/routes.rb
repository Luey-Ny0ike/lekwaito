Rails.application.routes.draw do
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    devise_for :users, controllers: {
     registrations: 'users/registrations'
   }
  root 'home#index'
  resources :products
  get 'contact_us', to: 'home#contact'
  get 'about_us', to:'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
