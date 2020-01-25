Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "pages#index"

get "/login", to: "session#new"
post "/login", to: "session#create"

delete "/logout", to: "session#destroy"

get "/signup", to: "users#new"
post "/signup", to: "users#create"

get "/secret", to: "pages#secret"

  namespace :admin do
    get "/", to: "dashboard#index"
  end
end
