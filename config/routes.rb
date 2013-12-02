August::Application.routes.draw do

  #frontend
  root :to =>  "home#index"
  match "section", :to => 'section#index', :via => [:get,]


  #cpanel
  match '/cpanel', :to => 'cpanel#index', :via => [:get]
  match '/cpanel/things/attachment', :to => 'cpanel/things#attachment', :via => [:get, :post]
  namespace :cpanel do
    resources :things
    resources :settings
    resources :sections
    resources :nodes
    resources :posts
    resources :attachments
  end

  #account
  devise_for :users, :controllers => { :sessions => "session", :registrations => "account", :passwords => "passwords"}
  devise_scope :user do 
    get "/passwords/message" => "passwords#message"
  end


end
