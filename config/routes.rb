FvcServer::Application.routes.draw do

  get "user/login"

  get "user/logout"

  match "user/create_session"

  match "schedule/load_events"

  root :to => 'events#index'
  resources :events
end
