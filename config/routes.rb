Rails.application.routes.draw do
  devise_for :users
  resources :parties, constraints: { format: :html }
  resources :matches, constraints: { format: :html }
  resources :pools, constraints: { format: :html }

  root "parties#index"
end
