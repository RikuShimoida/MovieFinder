Rails.application.routes.draw do
  get '/' => "posts#index"
  get "/posts/show/title" => "posts#title"
  get "/posts/show/director" => "posts#director"
  get "/posts/show/actor" => "posts#actor"
  get "/posts/show/parameter" => "posts#parameter"
  get "/posts/new" => "posts#new"
  get "/posts/show" => "posts#show"
  get "/posts/show/:id" => "posts#edit"
  get "/posts/about/:id" => "posts#about"
  get "/posts/:id/delete" => "posts#delete"
  post "/posts/create" => "posts#create"
  post "/posts/index" => "posts#index"
  post "/posts/:id/update" => "posts#update"
  get '/movies/search' => 'movies#search'
  post '/movies/index2' => 'movies#index2'
end
