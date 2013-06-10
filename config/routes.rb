Redmine::Application.routes.draw do

  get "users/index"
  put "users/:id/toggle_admin", :to => "users#toggle_admin", :as => "toggle_admin"

#Routes pour le form

match 'contact' => 'contact#new', :as => 'contact', :via => :get
match 'contact' => 'contact#create', :as => 'contact', :via => :post

match 'redmine' => 'redmine#new', :as => 'redmine', :via => :get
match 'redmine' => 'redmine#create', :as => 'redmine', :via => :post
root to: "sections#show", :id => '29', :division_id => '5'





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

