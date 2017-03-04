Rails.application.routes.draw do
  get 'results/index'

  root 'results#index'

  resources :campaigns
end
