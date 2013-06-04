Gearlance::Application.routes.draw do
  root :to => "items#featured"
  
  resources :categories
  resources :items
  resources :users
  resources :reservations, except: [:new]
  resource :session
  resource :charges

  match "/faq" => "pages#faq"
  match "/about" => "pages#about"
end
