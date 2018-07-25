Rails.application.routes.draw do
  root "welcome#index"

  resources :sentences, only: [:index]
end
