Rails.application.routes.draw do
  resources :pools, constraints: { format: :html }
  resources :matches, constraints: { format: :html }

  get "/standings", to: "standings#index"

  root "matches#index"
end
