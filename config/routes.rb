DnDCity::Application.routes.draw do
  resources :campaigns

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end