August::Application.routes.draw do

  #frontend
  root :to =>  "home#index"
  match "sections", :to => 'section#map', :via => [:get,]
  match "section/:section/node/:node", :to => 'node#show', :via => [:get]
  match "section/:name", :to => 'section#index', :via => [:get,]
  match "thing/:title", :to => 'thing#show', :via => [:get,], :constraints => { :title => /[^\/]+/ }


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
    resources :tags
    resources :malls
    resources :promotions
    resources :ads
  end

  #account
  devise_for :users, :controllers => { :sessions => "session", :registrations => "account", :passwords => "passwords"}
  devise_scope :user do 
    get "/passwords/message" => "passwords#message"
  end


end
