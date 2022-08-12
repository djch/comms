Rails.application.routes.draw do
  devise_for :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resource :rooms, only: [:index, :new]
  root "rooms#index"
end
