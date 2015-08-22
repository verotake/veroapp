class Amiga < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
