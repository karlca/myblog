Rails.application.routes.draw do
  get 'abouts/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'posts#index'

  resources :posts do
    resources :comments
  end

  get 'about', to: 'abouts#index', as: 'about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
