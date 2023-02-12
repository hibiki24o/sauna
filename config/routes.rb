Rails.application.routes.draw do
  resources :saunas, only: :index
end
