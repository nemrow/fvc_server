FvcServer::Application.routes.draw do

  get "user/login"

  get "user/logout"

  match "user/create_session"


  namespace :api do
    namespace :v1 do
      match "load_data" => "schedule#load_events"
    end
  end

  root :to => 'events#index'
  resources :events
end
