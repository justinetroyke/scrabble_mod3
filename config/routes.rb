Rails.application.routes.draw do
  root "welcome#index"

  resources :welcome, only: [] do
    get '/sentences', to: 'welcome#sentences', on: :collection
    post '/sentences', to: 'welcome#sentences', on: :collection
  end
end
