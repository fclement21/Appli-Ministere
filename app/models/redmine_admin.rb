class RedmineAdmin < ActiveRecord::Base
  attr_accessible :admin_title

extend  FriendlyId
friendly_id :admin_title

end
