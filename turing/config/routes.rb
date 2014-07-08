Rails.application.routes.draw do

  get 'area_riservata/classe'

  get 'attivita_extra', to: 'attivita_extra#tutte_le_attivita'
  get 'attivita_extra/tutte_le_attivita'
  get 'attivita_extra/:activity_type', to: 'attivita_extra#tutte_le_attivita'
  get 'attivita_extra/:activity_type/tutte_le_attivita', to: 'attivita_extra#tutte_le_attivita'
  get 'attivita_extra/:id/descrizione', to: 'attivita_extra#descrizione'

  get 'attivita_extra/:id/:surname', to: 'docente#curriculum'
  get 'attivita_extra/:id/:surname/curriculum', to: 'docente#curriculum'
  get 'attivita_extra/:id/:surname/orario_ricevimenti', to: 'docente#orario_ricevimenti'

  get 'classe', to: 'classe#tutte_le_classi'
  get 'classe/tutte_le_classi'
  get 'classe/:year/:section', to: 'classe#bacheca'
  get 'classe/:year/:section/bacheca', to: 'classe#bacheca'
  get 'classe/:year/:section/coordinamento_e_consiglio_di_classe', to: 'classe#coordinamento_e_consiglio_di_classe'
  get 'classe/:year/:section/materiale', to: 'classe#materiale'
  get 'classe/:year/:section/orario', to: 'classe#orario'
  get 'classe/:year/:section/docenti_della_classe', to: 'docente#tutti_i_docenti'

  get 'classe/:year/:section/:surname', to: 'docente#curriculum'
  get 'classe/:year/:section/:surname/curriculum', to: 'docente#curriculum'
  get 'classe/:year/:section/:surname/orario_ricevimenti', to: 'docente#orario_ricevimenti'

  get 'docente/tutti_i_docenti'
  get 'docente', to: 'docente#tutti_i_docenti'
  get 'docente/:surname', to: 'docente#curriculum'
  get 'docente/:surname/curriculum', to: 'docente#curriculum'
  get 'docente/:surname/orario_ricevimenti', to: 'docente#orario_ricevimenti'
  get 'docente/:surname/classi_in_cui_insegna', to: 'classe#tutte_le_classi'
  get 'docente/:surname/attivita_che_coordina', to: 'attivita_extra#tutte_le_attivita'
  get 'docente/:surname/:id/descrizione', to: 'attivita_extra#descrizione'

  post 'docente/:surname/orario_ricevimenti', to: 'docente#orario_ricevimenti'
  post 'classe/:year/:section/:surname/orario_ricevimenti', to: 'docente#orario_ricevimenti'

  get 'docente/:surname/:year/:section', to: 'classe#bacheca'
  get 'docente/:surname/:year/:section/bacheca', to: 'classe#bacheca'
  get 'docente/:surname/:year/:section/coordinamento_e_consiglio_di_classe', to: 'classe#coordinamento_e_consiglio_di_classe'
  get 'docente/:surname/:year/:section/materiale', to: 'classe#materiale'
  get 'docente/:surname/:year/:section/orario', to: 'classe#orario'

  get 'area_riservata', to: 'area_riservata#comunicazioniPersonali'
  get 'area_riservata/comunicazioni_personali', to: 'area_riservata#comunicazioniPersonali'
  get 'area_riservata/registro_elettronico', to: 'area_riservata#registroElettronico'
  get 'area_riservata/gestione_record', to: 'area_riservata#gestioneRecord'
  get 'area_riservata/gestioneRecord', to: 'area_riservata#gestioneRecord'
  get 'area_riservata/login'
  get 'area_riservata/logout', to: 'area_riservata#login'
  get 'area_riservata/docente'
  get 'area_riservata/docente/modifica/:id', to: 'area_riservata#docente'
  get 'area_riservata/classe/modifica/:id', to: 'area_riservata#classe'

  post 'area_riservata/login'
  post 'area_riservata/gestioneRecord'
  post 'area_riservata/gestione_record', to: 'area_riservata#gestioneRecord'
  post 'area_riservata/docente'
  post '/area_riservata/docente/modifica/:id', to: 'area_riservata#docente'
  post 'area_riservata/classe'
  post '/area_riservata/classe/modifica/:id', to: 'area_riservata#classe'

  get 'scuola', to: 'scuola#storia'
  get 'scuola/storia'
  get 'scuola/obiettivi'
  get 'scuola/successi'
  get 'scuola/info_burocratiche'
  get 'scuola/regolamento'

  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
