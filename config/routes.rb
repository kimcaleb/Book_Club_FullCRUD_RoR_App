Rails.application.routes.draw do
  root "users#index"
  resources :users do # automatically generates all restful routes for a particular controller. 
    resources :books 
  end

  resources :books do
    resources :users
  end

  get "/users/:user_id/searchbooks", to: "searches#index"
  resources :sessions, only: [:new, :create]
  delete "/logout", to: "sessions#destroy", as: :logout
end
