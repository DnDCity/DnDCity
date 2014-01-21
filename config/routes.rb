DnDCity::Application.routes.draw do
  resources :effects

  resources :character_levels

  resources :sizes

  resources :spells

  resources :skills

  resources :character_classes

  resources :races

  resources :characters

  resources :campaigns

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end