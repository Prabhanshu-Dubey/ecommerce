class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :code
      t.text :description
      t.integer :merchant_id

      t.timestamps null: false
    end
  end
end
