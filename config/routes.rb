Rails.application.routes.draw do
  resources :events
  resources :users
  post '/access', to: 'access_control#sign_in'
  get '/access', to: 'access_control#log_out'
  root "events#index"
end
