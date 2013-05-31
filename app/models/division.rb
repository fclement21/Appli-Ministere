class Division < ActiveRecord::Base
  attr_accessible :title
  validates :title, :presence => true, :length => { :minimum => 1}
  has_many :sections, :dependent => :destroy

  extend  FriendlyId
friendly_id :title, use: :slugged
end
