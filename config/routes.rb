Rails.application.routes.draw do
  resources :deliveries
  resource :cart, only: [:show]
  resources :order_items, only: %i[create update destroy]

  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'logout', to: 'devise/sessions#destroy'
  devise_for :users,
        controllers: {
          registrations: 'users/registrations'
        }
  root 'home#index'
  resources :products
  get 'contact_us', to: 'home#contact'
  get 'about_us', to: 'home#about'
  get 'checkout', to: 'home#checkout'
  get 'payment', to: 'home#payment'
  get 'search', to: 'search#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
