GistTools::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  root 'pages#index'
  get "pages/index"
  get "gists/:id" => "gists#show", as: "gist"
  get "gists" => "gists#index", as: "gists"
  post "gists" => "gists#display_gist"
end
