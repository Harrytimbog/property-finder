Rails.application.routes.draw do
  get 'dashboards/index'
  get 'dashboards/profile'
  devise_for :accounts
  resources :properties

  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile
  post "/agent/message" => 'properties#email_agent', as: :email_agent

  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
