Rails.application.routes.draw do
  get 'campaigns/results'

  get 'results/index'

  root 'results#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
