Rails.application.routes.draw do
  resources :garages

  root 'welcome#index'
end
