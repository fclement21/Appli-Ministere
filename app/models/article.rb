class Article < ActiveRecord::Base
    attr_accessible :content, :resume, :title, :image
    validates :title, :presence => true, :length => { :minimum => 5}
      belongs_to :section
      mount_uploader :image, ImageUploader

end
