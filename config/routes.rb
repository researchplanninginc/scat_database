Rails.application.routes.draw do

  root :controller => 'pages', :action => 'dashboard'
  # static pages
  get 'pages/dashboard'
  get 'pages/home'
  get 'pages/about'

  # Routes for the Lookup_tidal resource:
  # CREATE
  get "/lookup_tidals/new", :controller => "lookup_tidals", :action => "new"
  post "/create_lookup_tidal", :controller => "lookup_tidals", :action => "create"

  # READ
  get "/lookup_tidals", :controller => "lookup_tidals", :action => "index"
  get "/lookup_tidals/:id", :controller => "lookup_tidals", :action => "show"

  # UPDATE
  get "/lookup_tidals/:id/edit", :controller => "lookup_tidals", :action => "edit"
  post "/update_lookup_tidal/:id", :controller => "lookup_tidals", :action => "update"

  # DELETE
  get "/delete_lookup_tidal/:id", :controller => "lookup_tidals", :action => "destroy"
  #------------------------------

  # Routes for the Lookup_tb_char resource:
  # CREATE
  get "/lookup_tb_chars/new", :controller => "lookup_tb_chars", :action => "new"
  post "/create_lookup_tb_char", :controller => "lookup_tb_chars", :action => "create"

  # READ
  get "/lookup_tb_chars", :controller => "lookup_tb_chars", :action => "index"
  get "/lookup_tb_chars/:id", :controller => "lookup_tb_chars", :action => "show"

  # UPDATE
  get "/lookup_tb_chars/:id/edit", :controller => "lookup_tb_chars", :action => "edit"
  post "/update_lookup_tb_char/:id", :controller => "lookup_tb_chars", :action => "update"

  # DELETE
  get "/delete_lookup_tb_char/:id", :controller => "lookup_tb_chars", :action => "destroy"
  #------------------------------

  # Routes for the Lookup_oil_char resource:
  # CREATE
  get "/lookup_oil_chars/new", :controller => "lookup_oil_chars", :action => "new"
  post "/create_lookup_oil_char", :controller => "lookup_oil_chars", :action => "create"

  # READ
  get "/lookup_oil_chars", :controller => "lookup_oil_chars", :action => "index"
  get "/lookup_oil_chars/:id", :controller => "lookup_oil_chars", :action => "show"

  # UPDATE
  get "/lookup_oil_chars/:id/edit", :controller => "lookup_oil_chars", :action => "edit"
  post "/update_lookup_oil_char/:id", :controller => "lookup_oil_chars", :action => "update"

  # DELETE
  get "/delete_lookup_oil_char/:id", :controller => "lookup_oil_chars", :action => "destroy"
  #------------------------------

  # Routes for the Lookup_pit_char resource:
  # CREATE
  get "/lookup_pit_chars/new", :controller => "lookup_pit_chars", :action => "new"
  post "/create_lookup_pit_char", :controller => "lookup_pit_chars", :action => "create"

  # READ
  get "/lookup_pit_chars", :controller => "lookup_pit_chars", :action => "index"
  get "/lookup_pit_chars/:id", :controller => "lookup_pit_chars", :action => "show"

  # UPDATE
  get "/lookup_pit_chars/:id/edit", :controller => "lookup_pit_chars", :action => "edit"
  post "/update_lookup_pit_char/:id", :controller => "lookup_pit_chars", :action => "update"

  # DELETE
  get "/delete_lookup_pit_char/:id", :controller => "lookup_pit_chars", :action => "destroy"
  #------------------------------

  # Routes for the Lookup_substr resource:
  # CREATE
  get "/lookup_substrs/new", :controller => "lookup_substrs", :action => "new"
  post "/create_lookup_substr", :controller => "lookup_substrs", :action => "create"

  # READ
  get "/lookup_substrs", :controller => "lookup_substrs", :action => "index"
  get "/lookup_substrs/:id", :controller => "lookup_substrs", :action => "show"

  # UPDATE
  get "/lookup_substrs/:id/edit", :controller => "lookup_substrs", :action => "edit"
  post "/update_lookup_substr/:id", :controller => "lookup_substrs", :action => "update"

  # DELETE
  get "/delete_lookup_substr/:id", :controller => "lookup_substrs", :action => "destroy"
  #------------------------------

  # Routes for the Lookup_thick resource:
  # CREATE
  get "/lookup_thicks/new", :controller => "lookup_thicks", :action => "new"
  post "/create_lookup_thick", :controller => "lookup_thicks", :action => "create"

  # READ
  get "/lookup_thicks", :controller => "lookup_thicks", :action => "index"
  get "/lookup_thicks/:id", :controller => "lookup_thicks", :action => "show"

  # UPDATE
  get "/lookup_thicks/:id/edit", :controller => "lookup_thicks", :action => "edit"
  post "/update_lookup_thick/:id", :controller => "lookup_thicks", :action => "update"

  # DELETE
  get "/delete_lookup_thick/:id", :controller => "lookup_thicks", :action => "destroy"
  #------------------------------

  # Routes for the Lookup_esi resource:
  # CREATE
  get "/lookup_esis/new", :controller => "lookup_esis", :action => "new"
  post "/create_lookup_esi", :controller => "lookup_esis", :action => "create"

  # READ
  get "/lookup_esis", :controller => "lookup_esis", :action => "index"
  get "/lookup_esis/:id", :controller => "lookup_esis", :action => "show"

  # UPDATE
  get "/lookup_esis/:id/edit", :controller => "lookup_esis", :action => "edit"
  post "/update_lookup_esi/:id", :controller => "lookup_esis", :action => "update"

  # DELETE
  get "/delete_lookup_esi/:id", :controller => "lookup_esis", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the Pit resource:
  # CREATE


  get "/pits/new", :controller => "pits", :action => "new"
  post "/create_pit", :controller => "pits", :action => "create"

  # READ
  get "/pits", :controller => "pits", :action => "index"
  get "/pits/:id", :controller => "pits", :action => "show"

  # UPDATE
  get "/pits/:id/edit", :controller => "pits", :action => "edit"
  post "/update_pit/:id", :controller => "pits", :action => "update"

  # DELETE
  get "/delete_pit/:id", :controller => "pits", :action => "destroy"
  #------------------------------

  # Routes for the Zone resource:
  # CREATE
  get "/zones/new", :controller => "zones", :action => "new"
  post "/create_zone", :controller => "zones", :action => "create"

  # READ
  get "/zones", :controller => "zones", :action => "index"
  get "/zones/:id", :controller => "zones", :action => "show"

  # UPDATE
  get "/zones/:id/edit", :controller => "zones", :action => "edit"
  post "/update_zone/:id", :controller => "zones", :action => "update"

  # DELETE
  get "/delete_zone/:id", :controller => "zones", :action => "destroy"
  #------------------------------

  # Routes for the Survey resource:
  # CREATE
  get "/surveys/new", :controller => "surveys", :action => "new"
  post "/create_survey", :controller => "surveys", :action => "create"

  # READ
  get "/surveys", :controller => "surveys", :action => "index"
  get "/surveys/:id", :controller => "surveys", :action => "show"

  # UPDATE
  get "/surveys/:id/edit", :controller => "surveys", :action => "edit"
  post "/update_survey/:id", :controller => "surveys", :action => "update"

  # DELETE
  get "/delete_survey/:id", :controller => "surveys", :action => "destroy"
  #------------------------------

  # Routes for the Segment resource:
  # CREATE
  get "/segments/new", :controller => "segments", :action => "new"
  post "/create_segment", :controller => "segments", :action => "create"

  # READ
  get "/segments", :controller => "segments", :action => "index"
  get "/segments/:id", :controller => "segments", :action => "show"

  # UPDATE
  get "/segments/:id/edit", :controller => "segments", :action => "edit"
  post "/update_segment/:id", :controller => "segments", :action => "update"

  # DELETE
  get "/delete_segment/:id", :controller => "segments", :action => "destroy"
  #------------------------------

  # Routes for the Person resource:
  # CREATE
  get "/people/new", :controller => "people", :action => "new"
  post "/create_person", :controller => "people", :action => "create"

  # READ
  get "/people", :controller => "people", :action => "index"
  get "/people/:id", :controller => "people", :action => "show"

  # UPDATE
  get "/people/:id/edit", :controller => "people", :action => "edit"
  post "/update_person/:id", :controller => "people", :action => "update"

  # DELETE
  get "/delete_person/:id", :controller => "people", :action => "destroy"
  #------------------------------
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
