Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'users#log_in'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  resources :users, only: [:new, :create]
  resources :parties do
    member do
      get :inactive
      put :inactive
    end
    resources :orders
  end


  resources :items do
    member do
      get :inactive
      put :inactive
    end
  end




  get '/admin' =>"items#index", as: :admin
  get '/users/log_in' => "users#log_in", as: :log_in
  get '/users/profile' => "users#profile", as: :profile
  get '/users/parties/all' => "parties#all", as: :all_tables
  get '/orders/all' => "orders#all", as: :all_orders
  get '/orders/:id/is_complete' => "orders#is_complete", as: :is_complete
  put '/orders/:id/is_complete' => "orders#is_complete"

  post '/sessions' => "sessions#create", as: :creation_station
  delete '/sessions' => "sessions#destroy", as: :deletion_station
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
