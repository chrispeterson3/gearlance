Gearlance::Application.routes.draw do
  resources :tests


  root :to => "items#featured", as: "featured"

  resources :categories
  resources :items
  resources :users
  resources :reservations, except: [:new]
  resource :session, except: [:edit]

  resources :charges

  match "/faq" => "pages#faq"
  match "/about" => "pages#about"
end
