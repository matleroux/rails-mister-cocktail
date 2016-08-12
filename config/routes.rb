Rails.application.routes.draw do

  resources :cocktails, only: [:show, :index, :new, :create] do
  	resources :doses, only: [:new, :create, :destroy]
  end
  root "cocktails#index"
end
