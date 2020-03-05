Rails.application.routes.draw do
  root to: 'foods#index'
  resources :foods
  resources :meals
  resources :measures
  resources :users
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
