Twitter::Application.routes.draw do
  get "users/new"
  post "users", to: "users#create"
  get "users/:id", to: "users#show", as: "user"
  # last part adds a helper so that user_path works
  get "tweets/new"
  post "tweets", to: "tweets#create"
  # when a user sends a post request with url tweets (which is what happens by default when the Create Tweet button is pressed) send them to the tweets create action
  get "tweets/:id", to: "tweets#show"
  # send requests of the form get tweets/1 to the tweets show action (which will use that number, passed thru params hash)
  get "tweets", to: "tweets#index"
  # get("tweets", { to: "tweets#index" })
  # set things up so that we can use the URL /tweets instead of /tweets/index
  delete "tweets/:id", to: "tweets#destroy"
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
