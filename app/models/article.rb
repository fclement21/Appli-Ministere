class Article < ActiveRecord::Base
    attr_accessible :content, :resume, :title, :image
      belongs_to :section
      mount_uploader :image, ImageUploader
end
