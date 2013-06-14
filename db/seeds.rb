# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Division.create(:title => "blabla")
User.create(:email => "admin@example.net", :password => "admin123", :admin => true)
Adminform.create(:php_project => "1",:redmine_project => "1",:php_title => "Creation Php", :redmine_title => "Redmine Creation",)
