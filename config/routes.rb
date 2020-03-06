Rails.application.routes.draw do
  root to: 'foods#index'
  resources :foods
  resources :meals
  resources :measures
  devise_for :users, skip: [:registrations]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
