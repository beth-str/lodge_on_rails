LodgeOnRails::Application.routes.draw do

  resources :activities, :guests, :reservations

  root :to => "activities#index"

  # get 'guests/activities',         :to => 'guests#activities_show'
  get 'guests/assign_activity/:id',  :to => 'guests#assign_activity'
  post 'guests/assign_activity',     :to => 'guests#assign_activity#create', :redirect => 'guests'


  # get "activities/index"
  # get "activities/show/:id"
  # get "activities/new"
  # get "activities/edit"

  # get "activities"              # INDEX
  # get "activities/:id"          # SHOW (displays one record)
  # get "activities/new"          # NEW (form)
  # post "activities"             # CREATE (saves new form data)
  # get "activities/:id/edit"     # EDIT (form)
  # put "activities/:id"          # UPDATE (saves edit form data)
  # delete "activities/:id"       # DESTROY

  # get "guests/index"
  # get "guests/show/:id"
  # get "guests/new"
  # get "guests/edit"

  # get "reservations/index"
  # get "reservations/show"
  # get "reservations/new"
  # get "reservations/edit"
  
    
  # get "reservations"            # INDEX
  # get "reservations/:id"        # SHOW (displays one record)
  # get "reservations/new"        # NEW (form)
  # post "reservations"           # CREATE (saves new form data)
  # get "reservations/:id/edit"   # EDIT (form)
  # put "reservations/:id"        # UPDATE (saves edit form data)
  # delete "reservations/:id"     # DESTROY
  #
  # get "guests"                  # INDEX
  # get "guests/:id"              # SHOW (displays one record)
  # get "guests/new"              # NEW (form)
  # post "guests"                 # CREATE (saves new form data)
  # get "guests/:id/edit"         # EDIT (form)
  # put "guests/:id"              # UPDATE (saves edit form data)
  # delete "guests/:id"           # DESTROY
  

  match ':controller(/:action(/:id))', :via => :get
end
