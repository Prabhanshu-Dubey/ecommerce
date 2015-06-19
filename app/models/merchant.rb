class Merchant < ActiveRecord::Base
	has_many :coupons
	validates :name, presence: true
end
