class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    @coupon= Coupon.create(coupon_code: params[:coupon][:coupon_code ],store: params[:coupon][:store ])
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find(params[:id])
  end
end


=begin
Prefix Verb URI Pattern            Controller#Action
coupons GET  /coupons(.:format)     coupons#index
           POST /coupons(.:format)     coupons#create
new_coupon GET  /coupons/new(.:format) coupons#new
coupon GET  /coupons/:id(.:format) coupons#show
=end
