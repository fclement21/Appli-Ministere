require 'rubygems'
require 'active_resource'

# Issue model on the client side
class Issue < ActiveResource::Base
  self.site = 'http://localhost:3001'
  self.user = 'admin'
  self.password = 'admin'

attr_accessor :subject,  :priority_id, :description, :project_id
   # validates :subject, :presence => true, :length => { :minimum => 1}
    #validates :priority_id, :presence => true
    #validates :description, :presence => true

end

