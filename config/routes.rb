Rails.application.routes.draw do
  devise_for :users
  root to:"mysaunas#index"
  resources :mysaunas
end
