Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      get '/reauth', to: 'auth#show'
      get '/requests', to: 'requests#requests'
      # post '/login', to: 'auth#create_traveler'
      # get '/reauth', to: 'auth#show_traveler'

      # resources :expats, only: [:index, :update, :show, :create]
      # resources :requests, only: [:index, :create, :show, :update]
      resources :expats, only: [:index, :update, :show, :create] do
        resources :requests, only: [:index, :create, :show, :update]
      end

      resources :travelers, only: [:index, :update, :show, :create] do
        resources :trips, only: [:index, :update, :create, :show]
      end

    end
  end

end
