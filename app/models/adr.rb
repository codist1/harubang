class Adr < ActiveRecord::Base
    mount_uploader :my_image, S3uploaderUploader
end
