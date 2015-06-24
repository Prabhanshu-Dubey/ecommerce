class Brand < ActiveRecord::Base
	mount_uploader :logo, ImageUploader
end
