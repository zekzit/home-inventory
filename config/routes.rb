Rails.application.routes.draw do
  resources :assets
  get 'dashboard/overview'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end