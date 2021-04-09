Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      get '/whoami', to: 'sessions#whoami'
    end
  end
end
