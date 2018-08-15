Rails.application.routes.draw do
  resources :comics do
    resources :reviews
  end
  resources :applications
  
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
