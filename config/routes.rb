Rails.application.routes.draw do

  get "/tasks" => "tasks#index"
  post "/tasks/create" => "tasks#create"
  get "/tasks/:id" => "tasks#show"
  patch "/tasks/:id" => "tasks#update"
  delete "/tasks/:id" => "tasks#destroy"

end
