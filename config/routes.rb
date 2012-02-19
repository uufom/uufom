UUFOM::Application.routes.draw do
  devise_for :users

  get "public/index"

  root :to => 'public#index'

  resources :admin, :only => [:index]
end
