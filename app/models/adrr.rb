class Adrr < ActiveRecord::Base
        mount_uploader :my2_image, S3uploaderUploader
        mount_uploader :my2_image2, S3uploaderUploader
        mount_uploader :my2_image3, S3uploaderUploader
        mount_uploader :my2_image_f, S3uploaderUploader
end
