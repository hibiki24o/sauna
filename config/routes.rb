Rails.application.routes.draw do
  devise_for :users
  root to:"mysaunas#index"
  resources :mysaunas, only: [:index, :new, :create, :destroy, :show, :edit, :update]
end
