Rails.application.routes.draw do
  root to:"mysaunas#index"
  resources :mysaunas, only: [:index, :new]
end
