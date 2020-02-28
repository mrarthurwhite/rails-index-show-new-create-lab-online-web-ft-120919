class Coupon < ApplicationRecord
  def to_s
    self.coupon_code  + " at " + self.store
  end

end
