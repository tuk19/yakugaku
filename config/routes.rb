Rails.application.routes.draw do
  root to: 'tops#index'
  devise_for :admins
  get 'admins/index'
  devise_for :users
  get 'users/index'
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
