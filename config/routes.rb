Rails.application.routes.draw do
  resources :people

  root "home#dashboard"
end
