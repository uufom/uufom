UUFOM::Application.routes.draw do
  devise_for :users

  get "public/index"

  get "/amazon", :to => redirect("http://www.amazon.com/?_encoding=UTF8&camp=1789&creative=9325&linkCode=ur2&tag=uufom-20")

  root :to => 'public#index'

  resources :admin, :only => [:index]

  resources :upcoming_services, :only => [:create, :update, :destroy]
  resources :events, :only => [:create, :update, :destroy]
  resources :newsletters, :only => [:index, :create]
  resources :social_justice_newsletters, :only => [:index, :create]
  resources :calendars, :only => [:index, :create, :update]
end
