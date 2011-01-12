Precomp2011::Application.routes.draw do
  resources :presentations
  
  resources :users

  match '/auth/:provider/callback', :to => 'sessions#create'
end
