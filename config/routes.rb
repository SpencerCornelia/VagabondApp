Rails.application.routes.draw do
  root to: "welcome#index"

  get "/users", to: "users#index"

  get "/users/new", to: "users#new"

  post "/users", to: "users#create"

  get "/users/:id", to: "users#show"

  get "/users/:id/edit", to: "users#edit", as: "edit_user"

  put "/users/:id", to: "users#update"

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  delete "/users/:id", to: "users#delete"

  get '/posts', to: 'posts#index'

  get '/posts/new', to: 'posts#new'

  post '/posts', to: 'posts#create'

  get '/posts/:id', to: 'posts#show'

  get '/posts/:id/edit', to: 'posts#edit'

  put '/posts/:id', to: 'posts#update'

  get '/places', to: 'places#index'

  get '/places', to: 'places#show'


end
