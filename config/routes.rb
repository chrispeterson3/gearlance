Gearlance::Application.routes.draw do
  root :to => 'items#index'
  resources :categories
  resources :items
  resources :users
  resource :session
end
