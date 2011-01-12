Precomp2011::Application.routes.draw do
  resources :presentations

  match '/auth/:provider/callback', :to => 'sessions#create'
end
