require 'rubygems'
require 'active_resource'

# Issue model on the client side
class Issue < ActiveResource::Base
  self.site = 'http://localhost:3001'
  self.user = 'admin'
  self.password = 'admin'

attr_accessor :subject,  :priority_id, :description, :project_id, :nom_environnement, :type_bdd, :email,  :nom_redmine, :nom_admin, :admin_title

   def validate
   errors.add("description", "can't be empty") if description.blank?
  end
    #validates :priority_id, :presence => true
    #validates :email, :presence => true


end

