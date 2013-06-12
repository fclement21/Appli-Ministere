class RedmineAdmin < ActiveRecord::Base
  attr_accessible :admin_title , :numero_project

extend  FriendlyId
friendly_id :admin_title

end
