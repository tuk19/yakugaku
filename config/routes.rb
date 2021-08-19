Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to: 'tops#index'
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
