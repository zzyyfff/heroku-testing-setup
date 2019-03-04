# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Books resouce routes
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'

  # Patients resouce routes
  get '/patients' => 'patients#index'
  get '/patients/:id' => 'patients#show'

  # Ingredients resouce routes
  get '/ingredients' => 'ingredients#index'
  get '/ingredients/:id' => 'ingredients#show'
end
