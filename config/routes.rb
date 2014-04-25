Rails.application.routes.draw do

  get   '/hello_world' => 'hello_world#hello_world'
  post  'pusher/auth' => 'pusher#create'
  get   'pusher/auth' => 'pusher#show'

  root 'pages#index'
end
