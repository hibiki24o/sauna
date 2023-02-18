Rails.application.routes.draw do
  root to:"saunas#index"
  resources :saunas, only: :index
end
