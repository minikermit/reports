ActionController::Routing::Routes.draw do |map|
  map.resources :depreciations

  map.resources :accruals

  map.resources :invoices


  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_sessions
  map.root :controller => "user_sessions", :action => "new"
  map.resources :roles

  map.resources :report_categories
  map.resources :report_categories, :collection => { :prioritize_reports => :post }

  map.resources :reports
  map.resources :reports, :collection => { :prioritize_report_lines => :post }

  map.resources :report_lines
  map.resources :account_plans

  map.resources :menus
  map.resources :projects
  map.resources :tasklists , :has_many => [ :comments ]
  map.resources :comments

  map.resources :par_mappings
  map.resources :currencies
  map.resources :products
  map.resources :product_categories
  map.resources :position_types
  map.resources :dim_dates
  map.resources :client_security_positions
  map.resources :packages
  map.resources :timebands
  map.resources :sources
  map.resources :scenarios

  map.resources :validationrules
  map.resources :validations

  map.resources :b2_ta_mappings
  map.resources :mortgagescollaterals
  map.resources :mortgages
  map.resources :derivatives
  map.resources :ratings
  map.resources :loanbooks
  map.resources :counterparties
  map.resources :limits
  map.resources :nostros
  map.resources :provisions

  map.resources :scrambles
  map.resources :commands

  map.resources :homes
  map.resources :portals

  map.resources :fdbtabs
  map.resources :fdbclis

  map.resources :autocomplete_searches, :only => [:index], :as => 'autocomplete'
  # map.resources :users, :collection => {:load_user => :get, :autocomplete => :get}
  

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.

   map.connect ':controller/:action/:id'
   map.connect ':controller/:action/:id.:format'
end
