Rails.application.routes.draw do
  devise_for :comments
  resources :comments
  resources :event_details
  resources :events
  devise_for :profiles
  resources :profiles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
