Rails.application.routes.draw do
  resources :addresses
  resources :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "users#index" #nicht home_controller#home


end
