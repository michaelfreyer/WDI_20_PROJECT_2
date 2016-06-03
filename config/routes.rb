Rails.application.routes.draw do
  devise_for :users
  resources :users

  # get 'static_pages/home'

  # get 'static_pages/help'

  get 'help', to: "static_pages#help"

  root "static_pages#home"

end
