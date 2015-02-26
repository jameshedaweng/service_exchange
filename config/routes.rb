Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  resources :categories
  get "/categories_manage", to: "categories#manage_categories", as: "manage_categories"
  get "/categories_gallery", to: "categories#gallery", as: "gallery_categories"

  resources :powers
  get "/powers_manage", to: "powers#manage_powers", as: "manage_powers"
  get "/my_powers", to: "powers#my_powers", as: "my_powers"
  get "/discover", to: "powers#discover", as: "discover"

  devise_for :users

  get 'static_pages/home'
  get '/dashboard', to:"static_pages#dashboard", as: "dashboard"
  root :to => "static_pages#home"
end
