Rails.application.routes.draw do
  resources :events
  resources :users
  root "users#index"
end
