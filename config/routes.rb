Gearlance::Application.routes.draw do
  root :to => 'items#featured'
  
  resources :categories
  resources :items
  resources :users
  resource :session
end
