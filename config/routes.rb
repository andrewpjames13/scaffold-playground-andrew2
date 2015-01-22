Rails.application.routes.draw do
  resources :orginizations

  resources :people

  root "home#dashboard"
end
