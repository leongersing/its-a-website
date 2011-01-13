Precomp2011::Application.routes.draw do

  resources :presentations do
     resources :presentation_questions
  end

  resources :users

  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/sessions/destroy', :to => 'sessions#destroy'
  match '/sessions/create', :to => 'sessions#create_by_name' if Rails.env.development?
  root :to => "presentations#index"
end
