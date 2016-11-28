Rails.application.routes.draw do
  resources :garages do
    resources :vehicles
  end

  root 'welcome#index'
end
