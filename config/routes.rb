Rails.application.routes.draw do
  root "landing#index"
  get "courses", to: "courses#index"
  get "examples", to: "landing#examples"
  get "messages", to: "messages#index"
  post "messages", to: "messages#create"
  resources :users
end
