# # Rails.application.routes.draw do
#   get "home/index"
#   devise_for :users
# #   get "tasks/index"
# #   get "tasks/show"
# #   get "tasks/new"
# #   get "tasks/edit"
# #   get "tasks/create"
# #   get "tasks/update"
# #   get "tasks/destroy"
# #   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# #   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
# #   # Can be used by load balancers and uptime monitors to verify that the app is live.
# #   get "up" => "rails/health#show", as: :rails_health_check

# #   # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
# #   # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
# #   # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

# #   # Defines the root path route ("/")
# #   # root "posts#index"
# #   # config/routes.rb
# # Rails.application.routes.draw do
#   get "home/index"
#   devise_for :users
#   root 'home#index'
# #   # Defines the root path route ("/")
# #   root "tasks#index" # This makes your tasks index page the homepage

# #   # Sets up all 7 RESTful routes for the Task model
# #   resources :tasks
# # end
# # ----------------------------------------------------------------------
# # config/routes.rb
# Rails.application.routes.draw do
#   # Defines the root path route ("/")
#   root "tasks#index"

#   # Sets up all 7 RESTful routes for the Task model
#   # This single line replaces all the individual get/post/patch/delete routes
#   # for index, show, new, create, edit, update, destroy.
#   resources :tasks

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
#   # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
#   # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
# end
# -----------------------------------------------------------------------
# config/routes.rb
Rails.application.routes.draw do
  # Devise routes for user authentication
  devise_for :users

  # Defines the root path route ("/") to the tasks index page
  root "tasks#index"

  # Sets up all 7 RESTful routes for the Task model
  resources :tasks

  # Reveal health status on /up
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA routes (uncomment if you're using them)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
