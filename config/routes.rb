Redmine::Application.routes.draw do

  resources :adminforms


  get "users/index"
  put "users/:id/toggle_admin", :to => "users#toggle_admin", :as => "toggle_admin"

#Routes pour les form

match 'creation_environnement_php' => 'contact#new', :as => 'contact', :via => :get
match 'creation_environnement_php' => 'contact#create', :as => 'contact', :via => :post

match 'creation_instance_redmine' => 'redmine#new', :as => 'redmine', :via => :get
match 'creation_instance_redmine' => 'redmine#create', :as => 'redmine', :via => :post


#Admin form
#match 'edit_redmine' => 'redmine#edit', :as => 'redmine', :via => :get
#match 'edit_redmine' => 'redmine#update', :as => 'redmine', :via => :put

#routes de départ à décommenter une fois l'appli installer , qu'une division est crée ainsi qu'une sections.
#root to: "sections#show", :id => '1', :division_id => '1'
root to: "division#show", :id => '1'





resources :dashboard
 resources :divisions do
  resources :sections do
    resources :articles
    end
  end

devise_for :users, :path_names => { :sign_in => "login"}, :controllers => { :registrations => 'registrations'}

devise_scope :user do
  get "sign_in", :to =>"devise/sessions#new"
end

end

