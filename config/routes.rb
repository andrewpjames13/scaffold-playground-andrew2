Rails.application.routes.draw do
  resources :aliens

  resources :orginizations

  resources :people

  root "home#dashboard"
end
