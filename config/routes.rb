Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'

  get "logout"           => "sessions#destroy", :as => "logout"
  get "login"            => "sessions#new", :as => "login"
  get "signup"           => "users#new", :as => "signup"
  get "terms"            => "home#terms", :as => "terms"
  get "pricing"          => "charges#new", :as => "pricing"
  get "schedule"         => "courses#index", :as => "schedule"
  get "contact"          => "contact_us/contacts#new", :as => "contact"
  get "profile"          => "profiles#index", :as => "profile"
  get "profile/edit"     => "profiles#edit", :as => "edit_profile"
  patch "profile/update" => "profiles#update", :as => "update_profile"
  post 'users'           => "users#create"

  resources :courses do
    resources :exams
  end

  resources :users do
    member do
      get :activate
    end
  end

  resources :sessions
  resources :charges
  resources :password_resets

  # get 'sessions/new'

  # get 'users/new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
