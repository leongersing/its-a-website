Precomp2011::Application.routes.draw do

  resources :presentations do
     resources :presentation_questions
  end
  
  resources :users

  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/sessions/destroy', :to => 'sessions#destroy'
  root :to => "presentations#index"
end
