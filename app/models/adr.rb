class Adr < ActiveRecord::Base
    mount_uploader :my_image, S3uploaderUploader
    mount_uploader :my_image2, S3uploaderUploader
    mount_uploader :my_image3, S3uploaderUploader

end
