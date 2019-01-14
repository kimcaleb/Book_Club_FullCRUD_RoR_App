Rails.application.routes.draw do
  root "users#index"
  resources :users do # automatically generates all restful routes for a particular controller. 
    resources :books
  end
end
