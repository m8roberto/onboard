Onboard::Application.routes.draw do
  
  # to fit in with omniauth's callback urls
  get "/auth/:provider/callback" => "social_logins#create"



  # this is where the URLs of our pages are set
  resources   :users
  resources   :jobs

  # because I don't want to log in twice as a user
  # let's use a singular resource
  resource	  :session 	

  root "jobs#index"


end
