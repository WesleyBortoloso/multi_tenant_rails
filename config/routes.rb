Rails.application.routes.draw do

  get '/invalid_subdomain', to: 'errors#invalid_subdomain'

  constraints subdomain: /.+/ do
    resources :posts
  end
end
