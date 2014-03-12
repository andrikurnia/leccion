class Post < ActiveRecord::Base
  mount_uploader :thumbnail, ThumbnailUploader
  belongs_to :user
end
