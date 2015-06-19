class Coupon < ActiveRecord::Base
	belongs_to :merchant

	validates :code, presence: true
end
