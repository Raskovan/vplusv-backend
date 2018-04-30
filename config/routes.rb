Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/buy', to: "items#buy"
  get '/list', to: "items#list"
  get '/inventory', to: "items#inventory"
end
