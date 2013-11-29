Onboard::Application.routes.draw do
  
  get "contents/about"
  get "contents/terms"
  get "contents/privacy"
  # to fit in with omniauth's callback urls
  get "/auth/:provider/callback" => "social_logins#create"


  # static pages
  get "/about" => "contents#about"
  get "/privacy" => "contents#privacy"
  get "/terms-and-conditions" => "contents#terms", as: "terms"

  # this is where the URLs of our pages are set
  resources   :users, paths: "signups"
  resources   :jobs

  # because I don't want to log in twice as a user
  # let's use a singular resource
  resource	  :session 	

  root "jobs#index"


end
