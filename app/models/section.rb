class Section < ActiveRecord::Base

  attr_accessible :title
  validates :title, :presence => true, :length => { :minimum => 5}
  has_many :articles, :dependent => :destroy
end
