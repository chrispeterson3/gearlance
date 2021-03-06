Gearlance::Application.routes.draw do
  resources :reviews
  resources :subcategories
  get "/categories/:slug/:sub_category" => "subcategories#index"


  resources :tests


  root :to => "items#featured", as: "featured"

  resources :categories
  resources :items
  resources :users
  resources :reservations, except: [:new] do
    resources :charges
  end
  resource :session, except: [:edit]

  match "/faq" => "pages#faq"
  match "/about" => "pages#about"
end
