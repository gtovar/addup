Addup::Application.routes.draw do
match "application" => 'student_applications#new', :as => :application_new

  resources :student_applications

  resources :partnerships

  resources :sponsors

  resources :campaigns

  resources :payment_notifications

  resources :donations

  get "paypal_express/checkout"

  resources :students

  resources :careers

  resources :universities

  get "control_panel/index", :as => :control_panel

  get "home/landingpage"

  match "/student_detail/:id" => 'home#student_detail', :as => :student_detail

  get "home/choose_your_reward"

  match "home/how_it_works" => 'home#how_it_works', :as => :how

  get "home/msg"

  match "home/terms" => 'home#terms', :as => :terms

  match "home/about" => 'home#about', :as => :about

  match "home/contact" => 'home#contact', :as => :contact

  get "home/thanks"

	match 'noti' => 'payment_notification#create', :as => :notification

  get "paypal_express/checkout"

	get "javascript/dynamic_careers"

	match 'ipns' => 'paypal_express#notifications', :as => :ipns
get "home/dommie"
	match 'get_careers/:id' => 'javascript#get_careers', :as => :carreras

 match 'slider' => 'home#dommie_slider', :as => :slider
 match 'paypal' => 'home#dommie_paypal', :as => :paypal
get "paypal_express/checkout", :as => :pay
 # The priority is based upon order of creation:

# The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#landingpage'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
