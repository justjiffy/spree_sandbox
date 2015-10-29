Rails.application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  get '/' => 'welcome#index', as: :root
  
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/'
  
  get 'show/:id' => 'welcome#show', as: :full
  
  get 'store/' => 'spree/home#index', as: :store
  
  get 'calendar/' => 'calendar#index', as: :calendar
  
  get 'contact' => 'contact#index'
  
  get '/experience' => 'experience#index'
  get '/experience/comics' => 'experience#comics'
  get '/experience/game' => 'experience#game'
  get '/experience/music' => 'experience#music'
  get '/experience/videos' => 'experience#videos'

  get '/more' => 'more#index'
  get '/more/bio' => 'more#bio'
  get '/more/press' => 'more#press'
  get '/more/stories' => 'more#stories'

  # CUSTOM ADMIN ROUTES 
  get '/admin/homepage' => 'welcome#new', as: :edit_homepage
  get '/admin/homepage/new' => 'welcome#new_post'
  post 'post/' => 'welcome#create', as: :new_post
  get 'admin/homepage/:id/edit' => 'welcome#edit', as: :edit_post
  patch '/admin/homepage/:id/edit' => 'welcome#update'
          # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
