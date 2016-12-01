Rails.application.routes.draw do
  resources :garages do
    resources :vehicles
    end
    resources :vehicles do
      resources :services
  end


  root 'welcome#index'
end
