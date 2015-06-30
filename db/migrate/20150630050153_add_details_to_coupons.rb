class AddDetailsToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :views, :integer, :default => 0
    add_column :coupons, :discount, :integer, :default => 0
    add_column :coupons, :start_date, :datetime
    add_column :coupons, :end_time, :datetime
  end
end
