Precomp2011::Application.routes.draw do
  resources :users

  resources :presentations

  match '/auth/:provider/callback', :to => 'sessions#create'
end
