Rails.application.routes.draw do
#  match 'users', to: 'users#index', via: [:options]
 # match 'users/:id', to: 'users#show', via: [:options]

  #match 'spots/:id', to: 'spots#show', via: [:options]
  #match 'spots', to: 'spots#index', via: [:options]
  match 'closest', to: 'spots#closest', via: [:options]

  resource :user, except: [:new, :edit]
  resources :spots, except: [:new, :edit]

  get 'spots/review' => 'spots#review'
  get 'spots/review/:id/' => 'spots#review_show'

  # patch 'spots/review/:id' => 'spots#update'

  post 'closest' => 'spots#closest'
  # curl -i -X POST -H "Content-Type:application/json" -d '{"spot":{"latitude":100, "longitude":30}}' http://localhost:3000/closest/


  post 'session' => 'sessions#create'
  delete 'session' => 'sessions#destroy'

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
