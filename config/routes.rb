Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :letters, except: [:index, :show]
  get "/letters/public", to: "letters#public", as: "public_letters"

  root to: "main#index" 
end
