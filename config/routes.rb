DnDCity::Application.routes.draw do

  resources :class_skills

  resources :spell_sub_schools

  resources :spell_schools

  resources :spell_component_types

  resources :spell_levels

  resources :feats

  resources :feat_types

  resources :effects
  resources :character_levels
  resources :sizes
  resources :spells
  resources :skills
  resources :character_classes
  resources :races

  resources :characters
  resources :campaigns do 
    resources :members
  end

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
