Rails.application.routes.draw do
  root "landing#index"
  get "courses", to: "courses#index"
  get "examples", to: "landing#examples"
  resources :users
end
