Onboard::Application.routes.draw do
  get "sessions/new"
  get "jobs/index"
  get "jobs/show"
  get "jobs/new"
  get "jobs/edit"
  # this is where the URLs of our pages are set

  resources   :users
  resources   :jobs

  # because I don't want to log in twice as a user
  # let's use a singular resource
  resource	  :session 	

  root "jobs#index"


end
