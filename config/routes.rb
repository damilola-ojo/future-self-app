Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :letters, except: [:index, :show]

  root to: "main#index" 
end
