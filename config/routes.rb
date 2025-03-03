Rails.application.routes.draw do
  root "landing#index"
  get "examples", to: "landing#examples"
  resources :users
end
