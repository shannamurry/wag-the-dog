Rails.application.routes.draw do
  devise_for :users
  resources :walkers do
    resources :reviews
  end
  root "walkers#index"
end
