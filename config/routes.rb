Rails.application.routes.draw do
  resources :personas # Genera automáticamente las rutas para el controlador (index, show, new, create, edit, update, destroy)
  # get "personas/new", to: "personas#new", as: :new_persona
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
