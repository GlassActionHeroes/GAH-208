Rails.application.routes.draw do

  get   '/hello_world' => 'hello_world#hello_world'
  post  'pusher/auth'

  root 'pages#index'
end
