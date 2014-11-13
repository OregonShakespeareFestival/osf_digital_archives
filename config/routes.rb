# require "resque_web"


Rails.application.routes.draw do

  
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  mount RailsAdmin::Engine => '/production_credits/admin', as: 'rails_admin'
  blacklight_for :catalog
  devise_for :users

  # mount ResqueWeb::Engine => "/resque_web"
  # ResqueWeb::Engine.eager_load!

  mount ProductionCredits::Engine, at: "/production_credits"
  get 'search_results' => 'search_results#index'

  Hydra::BatchEdit.add_routes(self)
  # This must be the very last route in the file because it has a catch-all route for 404 errors.
  # This behavior seems to show up only in production mode.
  mount Sufia::Engine => '/'
  root to: 'home#index'

end
