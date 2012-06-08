UUFOM::Application.routes.draw do
  devise_for :users

  get "public/index"

  root :to => 'public#index'

  resources :admin, :only => [:index]

  resources :upcoming_services, :only => [:create, :update, :destroy]
  resources :events, :only => [:create, :update, :destroy]
  resources :newsletters, :only => [:index, :create]
  resources :social_justice_newsletters, :only => [:index, :create]
  resources :calendars, :only => [:index, :create, :update]
end
