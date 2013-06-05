Redmine::Application.routes.draw do

  get "users/index"
  put "users/:id/toggle_admin", :to => "users#toggle_admin", :as => "toggle_admin"


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

