class Bar < ActiveRecord::Base
  #attr_accessible :imagepath
  mount_uploader :imagepath, BarlogoUploader
end
