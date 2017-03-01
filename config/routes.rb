Rails.application.routes.draw do
  # Routes for the Cousine resource:
  # CREATE
  get "/cousines/new", :controller => "cousines", :action => "new"
  post "/create_cousine", :controller => "cousines", :action => "create"

  # READ
  get "/cousines", :controller => "cousines", :action => "index"
  get "/cousines/:id", :controller => "cousines", :action => "show"

  # UPDATE
  get "/cousines/:id/edit", :controller => "cousines", :action => "edit"
  post "/update_cousine/:id", :controller => "cousines", :action => "update"

  # DELETE
  get "/delete_cousine/:id", :controller => "cousines", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
