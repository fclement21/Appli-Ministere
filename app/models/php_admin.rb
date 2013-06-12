class PhpAdmin < ActiveRecord::Base
  attr_accessible :admin_title, :php_project

  extend  FriendlyId
friendly_id :admin_title
end
