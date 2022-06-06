Rails.application.routes.draw do
  root "home#welcome"
  devise_for :users

  resources :users do
    resources :characters
  end

  resources :characters, only: [:show, :new, :create, :update, :delete] do
    get ":id/edit_title", to: "characters#edit_title", as: "nested"

  end
  get "/characters/:id/edit_title", to: "characters#edit_title", as: "root_edit"
end
