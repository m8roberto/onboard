Onboard::Application.routes.draw do
  get "jobs/index"
  get "jobs/show"
  get "jobs/new"
  get "jobs/edit"
  # this is where the URLs of our pages are set

  resources   :users
  resources   :jobs

  root "jobs#index"


end
