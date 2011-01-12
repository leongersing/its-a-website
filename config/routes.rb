Precomp2011::Application.routes.draw do
  resources :presentations do
     resources :presentation_questions
  end
  
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/sessions/new', :to => 'sessions#new'
  match '/sessions/destroy', :to => 'sessions#destroy'
end
