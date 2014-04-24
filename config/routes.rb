Rails.application.routes.draw do

 get '/hello_world' => "hello_world#hello_world"
 get '/auth' => "pusher#auth"
end
