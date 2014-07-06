Rails.application.routes.draw do
  root "games#index"

  resources :secret_numbers, only: [:new, :show]
  resources :paper_rock_scissors, only: [:new, :show]
end
