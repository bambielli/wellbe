Newapp::Application.routes.draw do
  resources :users, :charges, :profiles, :sessions

  root :to => "home#index"

  #mapping new routes
  match '/home/terms', :controller =>'home', :action => 'terms'
  match '/home/privacy', :controller =>'home', :action => 'privacy'
  match '/home/noc', :controller => 'home', :action => 'noc'
  match '/charges/show', :controller => 'charges', :action => 'show'
  match '/users/passcreate', :controller => 'users', :action => 'passcreate'
end
