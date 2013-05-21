Gearlance::Application.routes.draw do
  root :to => 'featured#index'
  resources :featured, :only => [:index]
  resources :categories
  resources :items
  resources :users
  resource :session
end
