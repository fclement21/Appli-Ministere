class Adminform < ActiveRecord::Base
  attr_accessible :php_project, :php_title, :redmine_project, :redmine_title
end
