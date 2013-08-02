August::Application.routes.draw do
  root :to =>  "home#index"
  devise_for :users, :controllers => { :sessions => "session" }
end
