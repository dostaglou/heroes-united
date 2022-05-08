Rails.application.routes.draw do
  root "home#welcome"
  devise_for :users

  resources :users do
    resources :characters, only: [:index]
  end

  resources :characters, only: [:show, :new, :create, :edit, :update, :delete]
end
