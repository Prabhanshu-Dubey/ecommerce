json.array!(@coupons) do |coupon|
  json.extract! coupon, :id, :code, :description, :merchant_id
  json.url coupon_url(coupon, format: :json)
end
