Rails.application.routes.draw do
  resources :tasks
  devise_for :users
  resources :users

  # get 'static_pages/home'

  # get 'static_pages/help'

  get 'help', to: "static_pages#help"

  get 'tasks/:id/iCal', to: "tasks#iCal", as: "iCal"


  get 'tasks/:id/sms', to: "tasks#sms", as: "sms"

  root "static_pages#home"

end
