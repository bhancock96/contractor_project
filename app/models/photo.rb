class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :album

  mount_uploader  Uploader {uploader_option :filepath, :ignore_integrity_errors => true} 

end
