Rails.application.routes.draw do
  devise_for :users
  #get 'products/index'

  root to: 'home#index'

  get 'products', to: 'products#index', as: 'products'
  #root to: 'products#index'

  get 'about', to: 'home#about', as: 'about'
  get 'contact', to: 'home#contact', as: 'contact'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
