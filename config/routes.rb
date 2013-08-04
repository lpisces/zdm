August::Application.routes.draw do
  root :to =>  "home#index"

  
  devise_for :users, :controllers => { :sessions => "session", :registrations => "account", :passwords => "passwords"}

  devise_scope :user do 
    get "/passwords/message" => "passwords#message"
  end
end
