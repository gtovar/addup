Addup::Application.routes.draw do
  resources :advisors

  devise_for :admins, :controllers => { :sessions => "admins/sessions" }
  get "contact_form/new"
  get "contact_form/create"
  root :to => 'home#landingpage'
  match "/student/:id" => 'home#student_detail', :as      => :student
  match "reward/:id"   => "home#choose_your_reward", :as  => :reward
  match "terms"        => "home#terms", :as               => :terms
  match "privacy"      => "home#privacy", :as             => :privacy
  match "about"        => "home#about", :as               => :about
  match "success/:id"  => "home#thankstransf", :as        => :success
  match "application"  => 'student_applications#new', :as => :application_new
  match "contact"      => "home#contact", :as             => :contact
  match "companies"    => "home#companies", :as           => :companies
  match "howitworks"   => 'home#how_it_works', :as        => :how
  match 'ipns'         => 'donations#ipn', :as            => :ipn
  match "checkout/:id" => 'home#checkout', :as => :checkout
  match "student_application" => 'student_applications#new', :as => :application
  resources :student_applications
  match 'panel' => 'control_panel#index', :as => :panel
  match 'newform' => 'home#newform', :as => :newform
  match "faq" => 'home#faq', :as => :faq
match 'introduction' => 'home#introduction', :as => :introduction
match 'sponsors' => 'home#how_sponsors', :as => :how_sponsors

match 'faq-general' => 'home#general', :as => :faq_general
match 'faq-students' => 'home#students', :as => :faq_students
match 'faq-sponsors' => 'home#sponsors', :as => :faq_sponsors
match 'faq-addup101' => 'home#addup101', :as => :faq_addup101


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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
