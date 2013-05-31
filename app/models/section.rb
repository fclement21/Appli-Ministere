class Section < ActiveRecord::Base

  attr_accessible :title
  validates :title, :presence => true, :length => { :minimum => 1}
  belongs_to :division
  has_many :articles, :dependent => :destroy

extend  FriendlyId
friendly_id :title
end
