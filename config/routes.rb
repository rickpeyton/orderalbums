Rails.application.routes.draw do
  root to: 'orders#new'

  get 'ui(/:action)', controller: 'ui'

  resources :brands, only: [:new, :create]
end
