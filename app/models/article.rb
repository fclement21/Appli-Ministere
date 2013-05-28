class Article < ActiveRecord::Base
    attr_accessible :content, :resume, :title, :image
    validates :title, :presence => true, :length => { :minimum => 1}
    validates :image, :presence => true
    validates :resume, :presence => true
    validates :content, :presence => true
      belongs_to :section
      mount_uploader :image, ImageUploader

end
