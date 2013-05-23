class Article < ActiveRecord::Base
  belongs_to :section
  attr_accessible :content, :resume, :title
end
