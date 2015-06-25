class Brand < ActiveRecord::Base
	mount_uploader :logo, ImageUploader

	scope :search, ->(name) { where("name like ?", "%#{name}%") }
end
