Rails.application.routes.draw do
  mount ShopifyApp::Engine, at: '/'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: 'home#index'

  get "/rates" => "rates#index"

  post "/rates" => "rates#index"
end
