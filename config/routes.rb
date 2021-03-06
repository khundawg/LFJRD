Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users

  resources :profiles
  resources :updates, only: [:new, :create, :destroy]

  # defaults to dashboard
  #root :to => redirect('/singleview')

  # view routes
  get '/singleview' => 'singleview#index'

  # api routes
  get '/api/i18n/:locale' => 'api#i18n'

  post "/thanks" => "mailing_list#signup"


end
