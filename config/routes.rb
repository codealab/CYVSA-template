Template::Application.routes.draw do
  resources :slides
  get "mailings/index"
  get "mailings/new"
  post "mailings/create"
  resources :notices
  resources :informations
  resources :years
  get "static_pages/index"
  get "static_pages/recognition"
  root "static_pages#cyvsa_home"
  resources :homes
  resources :users
  
  resources :services do 
    resources :slides
  end
  resources :sessions, only: [:new, :create, :destroy]
  get "project/index"
  get "portfolio/index"
  match '/signup',    to:     'users#new',                  via: 'get'
  match '/admin',     to:     'sessions#new',               via: 'get'
  match '/signout',   to:     'sessions#destroy',           via: 'delete'
  match '/dashboard', to:  'homes#dashboard',            via: 'get'
  
  #devise_for :users
  #get "home/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   #root 'homes#index'

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
