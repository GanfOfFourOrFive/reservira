Rails.application.routes.draw do
  root :to => "visitors#index"
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users
  resources :tables

  namespace :admin do
    root to: "base#index"
  end
end
