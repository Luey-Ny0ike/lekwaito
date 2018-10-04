Rails.application.routes.draw do
  root 'home#index'
  resources :products
  get 'contact_us', to: 'home#contact'
  get 'about_us', to:'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
