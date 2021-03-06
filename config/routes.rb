Rails.application.routes.draw do
  root to: 'cocktail#index'

  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
