Rails.application.routes.draw do
  resources :garages do
    resources :vehicles do
      resources :services
    end
  end
  


  root 'welcome#index'
end
