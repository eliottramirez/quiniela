Rails.application.routes.draw do
  devise_for :users
  resources :parties, constraints: { format: :html }
  resources :matches, constraints: { format: :html }
  resources :pools, constraints: { format: :html }

  get "/send_invite", to: "party_invite#send_invite"

  root "parties#index"
end
