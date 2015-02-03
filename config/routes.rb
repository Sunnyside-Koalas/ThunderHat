Rails.application.routes.draw do

  get '/login' => 'session#new'
  post '/session' => 'session#create'
  delete '/session' => 'session#destroy'

  get '/' => 'welcome#index'
  get '/new' => 'users#new'
  post '/users/:user_id/users' => 'users#create'

  get '/tracks/:user_id/tracks'  => 'tracks#index'
  post '/tracks/:user_id/tracks' => 'tracks#create'
  put '/tracks/:user_id/tracks/:id' => 'tracks#edit'
end
