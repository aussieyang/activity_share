Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
root 'pages#home'

get '/pages/explore' => 'pages#explore'

get '/login' => 'sessions#new'
get '/auth/:provider/callback' => 'sessions#create_fb_login'
post '/sessions' => 'sessions#create_app_login'
get '/auth/failure' => 'sessions#failure'
get '/logout' => 'sessions#destroy'

resource :users

resources :activities

  namespace :admin do
    resources :dashboard
    resources :activities
    resources :users
    resources :bookings

    get '/dashboard' => 'dashboard#index'
    get '/activities/:id' =>'activities#show'

    get '/users/:id/edit' => 'users#edit'
    get '/activities/:id/edit' => 'activities#edit'
    get '/activities/:id/hosting' => 'activities#hosting', as: 'hosting'
    get '/activities/:id/booked' => 'activities#booked', as: 'booked'
    # patch '/activities/:id' => 'activities#update'

  end


get '/dashboard' => 'dashboard#index'

namespace :api do
    resources :activities
  end
end
