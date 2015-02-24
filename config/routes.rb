Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :powers
  get "/manage_powers", to: "powers#manage_powers", as: "manage_powers"

  devise_for :users
  get 'static_pages/home' 
  root :to => "static_pages#home"
end
