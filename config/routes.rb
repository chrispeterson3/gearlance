Gearlance::Application.routes.draw do
  resources :categories
  resources :items
  resources :users
  resource :session
end
