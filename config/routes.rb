Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'
  resources :user, only: [:index, :edit, :update]

  root 'user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
