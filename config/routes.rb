Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :letters

  root to: "main#index" 
end
