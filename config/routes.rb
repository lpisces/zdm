August::Application.routes.draw do

  match '/cpanel/things/attachment', :to => 'cpanel/things#attachment', :via => [:get, :post]
  namespace :cpanel do
    resources :things
    resources :settings
    resources :sections
    resources :nodes
    resources :posts
    resources :attachments
  end

  root :to =>  "home#index"
  
  devise_for :users, :controllers => { :sessions => "session", :registrations => "account", :passwords => "passwords"}

  devise_scope :user do 
    get "/passwords/message" => "passwords#message"
  end

  match '/cpanel', :to => 'cpanel#index', :via => [:get]

end
