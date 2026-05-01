# config/routes.rb
Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  # Defines the root path route ("/")
  # root "posts#index"

  # tells the TracksController to look for GET requests to /tracks path and
  # process them using an index of the track
  # get "/tracks", to: "tracks#index"
  # get "/tracks/new", to "tracks#new"
  # get "/tracks/:id", to: "tracks#show"
  # look for POST requests and use the create action
  # post "/tracks", to: "tracks#create"

  # get "/tracks/:id/edit", to: "tracks#edit"
  # patch "tracks/:id", to: "tracks#update"
  # put "tracks/:id", to: "tracks#update"

  # delete "/tracks/:id", to: "tracks#destroy"

  # but you don't need to do any of these because they are basic so we use
  root "tracks#index"
  resources :tracks
  resources :albums
end
