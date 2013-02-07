Newapp::Application.routes.draw do
  resources :users, :charges

  root :to => "home#index"
end
