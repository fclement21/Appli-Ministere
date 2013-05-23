class Section < ActiveRecord::Base
  attr_accessible :tile
  has_many :articles
end
